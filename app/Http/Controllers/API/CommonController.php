<?php

namespace App\Http\Controllers\API;

use Exception;
use Carbon\Carbon;
use App\Models\Clinic;
use App\Models\Pharmacy;
use Illuminate\Http\Request;
use App\Models\PharmacyMedicine;
use App\Models\ClinicPrescription;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Models\PharmacyPrescription;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Http;

class CommonController extends Controller
{
    public function pharmacyLister()
    {
        try {
            $userId = Auth::user()->id;           
            $pharmacies = Pharmacy::leftJoin('pharmacy_prescriptions as pp', 'pp.pharmacy_id', '=', 'pharmacies.id')
                         
                ->leftJoin('pharmacy_medicines as pm', function($join) 
                {
                    $join->on('pm.pharmacy_prescription_id', '=', 'pp.id')
                    ->whereNull('pm.deleted_at'); 
                })
                ->select('pharmacies.id as id','pharmacy_name','pharmacy_address','pharmacy_photo','pharmacies.city as city','pharmacies.email as email','pharmacies.phone_number as phone_number',
           
            
                //  DB::raw("MAX(IF(pp.status = 1 AND pp.user_id = $userId AND (pp.payment_method = 1 OR pp.payment_method = 2), 1, 0)) as med_status")
             
                DB::raw("MAX(IF(pp.status = 1 AND pp.user_id = $userId,1,0)) as med_status")
                
               

                // DB::raw("IF(
                // MAX(pp.status = 2), 
                // 0, 
                // MAX(
                // IF(
                // pp.status = 1 
                // AND pp.user_id = $userId 
                // AND (pp.payment_method = 1 OR pp.payment_method = 2), 
                // 1, 
                // 0
                // )
                // )
                // ) as med_status
                // ")


                // DB::raw("MAX(IF((pp.status = 1 OR pp.status = 2) AND pp.user_id = $userId AND (pp.payment_method = 1 OR pp.payment_method = 2), 1, 0)) as med_status")
             
            // DB::raw("MAX(IF(pp.user_id = $userId AND (pp.payment_method = 1 OR pp.payment_method = 2),IF(pp.status = 1, 1, 0),0)) as med_status")

                )
                ->groupBy('id', 'pharmacy_name', 'pharmacy_address', 'pharmacy_photo', 'pharmacies.city', 'pharmacies.email', 'pharmacies.phone_number')
                ->distinct()
                ->get();

               
                
            return response()->json(['pharmacys' => $pharmacies]);
        } 
        catch (Exception $e) 
        {
            Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function clinicLister()
    {
        try {
            $clinics = Clinic::all();
            return response()->json(['clinics' => $clinics]);
        } catch (Exception $e) {
            Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function clinicTestLister($id)
    {

        try {

            $clinics = Clinic::where('id', $id)->pluck('tests')->first();
            $tests = explode(',', json_decode($clinics));
            $tests = array_map('trim', $tests);
            return response()->json(['tests' => $tests]);
        } catch (Exception $e) {
            Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // public function pPrescription(Request $request)
    // {

    //     try {
    //         $request->validate([
    //             'user_id' => 'required|exists:users,id',
    //             'name' => 'required',
    //             'pharmacy_id' => 'required',
    //             'prescription.*' => 'required|image',
    //             'delivery_address' => 'required|string',
    //             'lat_long' => 'required|string',
    //             'payment_method' => 'required|string',
    //         ]);

    //         $prescriptionPaths = [];
    //         foreach ($request->file('prescription') as $file) {
    //             $prescriptionPaths[] = $file->store('prescriptions', 'public');
    //         }

    //         PharmacyPrescription::create([
    //             'user_id' => $request->user_id,
    //             'name' => $request->name,
    //             'pharmacy_id' => $request->pharmacy_id,
    //             'prescription' => json_encode($prescriptionPaths),
    //             'delivery_address' => $request->delivery_address,
    //             'payment_method' => $request->payment_method,
    //             'lat_long' => $request->lat_long,
    //         ]);
    //         return response()->json(['success' => 'Prescription added successfully.'], 200);
    //     } 
    //     catch (Exception $e) {
    //         Log::error($e);
    //         return response()->json([
    //             'message' => 'Something went wrong, please try again later.',
    //             'error' => $e->getMessage()
    //         ], 500);
    //     }

    // }


    public function pPrescription(Request $request)
{
    try {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'name' => 'required|string',
            'pharmacy_id' => 'required|integer',
            'prescription.*' => 'required|image',
            'delivery_address' => 'required|string',
            'lat_long' => 'required|string',
            'payment_method' => 'required|string',
        ]);

        // Store prescription images
        $prescriptionPaths = [];
        foreach ($request->file('prescription') as $file) {
            $prescriptionPaths[] = $file->store('prescriptions', 'public');
        }

        // Create pharmacy prescription
        $prescription = PharmacyPrescription::create([
            'user_id' => $request->user_id,
            'name' => $request->name,
            'pharmacy_id' => $request->pharmacy_id,
            'prescription' => json_encode($prescriptionPaths),
            'delivery_address' => $request->delivery_address,
            'payment_method' => $request->payment_method,
            'lat_long' => $request->lat_long,
        ]);

        // Send SMS confirmation to user
        $user = \App\Models\User::find($request->user_id);

        if ($user && $user->mobile) {
            $templateMessage = "Thanks for your order on {#var#}. We've received your medicine order ID: {#var#} and will notify you once it's processed. Areacode SCB";

            $response = Http::get('http://smsgt.niveosys.com/SMS_API/sendsms.php', [
                'username'    => 'ascbcomed',
                'password'    => 'Comed@123',
                'mobile'      => $user->mobile,
                'message'     => $templateMessage,
                'sendername'  => 'ARDSCB',
                'routetype'   => 1,
                'tid'         => '1207175446449105383', // ✅ Your approved template ID
                'var1'        => now()->format('d-m-Y'), // e.g., 06-08-2025
                'var2'        => 'MED' . str_pad($prescription->id, 5, '0', STR_PAD_LEFT), // e.g., MED00042
            ]);

            \Log::info('Pharmacy SMS sent: ' . $response->body());
        }

        return response()->json(['success' => 'Prescription added successfully.'], 200);

    } catch (Exception $e) {
        \Log::error('Pharmacy prescription error: ' . $e->getMessage());

        return response()->json([
            'message' => 'Something went wrong, please try again later.',
            'error' => $e->getMessage()
        ], 500);
    }
}



    public function clinicData()
    {
        try 
        {
            $userId = Auth::user()->id;
            $deliverRequest = ClinicPrescription::leftJoin('users', 'users.id', '=', 'clinic_prescriptions.delivery_id')
                ->where('clinic_prescriptions.delivery_id', $userId)
                ->whereIn('clinic_prescriptions.status', [0,1,2,3,4,5]) // Explicitly filter by status
                ->select('clinic_prescriptions.id','clinic_prescriptions.name as customer_name', 'users.phone_number', 'clinic_prescriptions.lat_long as deliv_coordinates', 
                'clinic_prescriptions.address as deliv_address',
                'clinic_prescriptions.otp as otp', 'clinic_prescriptions.status as status',DB::raw("clinic_prescriptions.updated_at as updated_at_str"))
            
                ->get();
            return response()->json(['clincData' => $deliverRequest]);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
            ], 500);
        }
    }


    
    public function pharmacyData()
    {
        try 
        {
            $userId         =   Auth::user()->id;
            $deliverRequest =   PharmacyPrescription::leftJoin('users', 'users.id', '=', 'pharmacy_prescriptions.delivery_id')
                                ->where('pharmacy_prescriptions.delivery_id', $userId)
                                ->whereIn('pharmacy_prescriptions.status', [3, 4]) 
                                ->select('pharmacy_prescriptions.id','pharmacy_prescriptions.name','users.phone_number','pharmacy_prescriptions.lat_long as deliv_coordinates', 'pharmacy_prescriptions.status',
                                        'pharmacy_prescriptions.delivery_address','pharmacy_prescriptions.payment_method', 'pharmacy_prescriptions.expect_date','pharmacy_prescriptions.total_amount',
                                        DB::raw("pharmacy_prescriptions.updated_at as updated_at_str")
                                        )

                                ->get();
                                return response()->json(['pharamcyData' => $deliverRequest]);
                                } 
                                catch (Exception $e) 
                                {
                                return response()->json([
                                'error' => true,
                                'message' => $e->getMessage(),
                                ], 500);
        }
    }


    public function clinicDataCompleted(Request $request, $id)
    {
        try {
       
            $validator = Validator::make($request->all(), [
                'delivery_coordinates' => 'required',
                'otp' => 'required',
                // 'status' => 'required',
            ]);
    
            if ($validator->fails()) 
            {
                return response()->json([
                    'status' => false,
                    'errors' => $validator->errors()
                ], 422);
            }

            $prescriptions = ClinicPrescription::where('id', $id)->get();
    
            if ($prescriptions->isEmpty())
            {
                return response()->json([
                    'status' => false,
                    'message' => 'No delivery records found.',
                ], 404);
            }
    
            // Check if any record matches the OTP
            // $matched = false;
            foreach ($prescriptions as $prescription) 
            {
                // if ($prescription->otp === $request->otp) {
                    $prescription->update([
                        'status' => 2,
                        'lat_long' => $request->delivery_coordinates,
                        'otp' => $request->otp,
                        'updated_at' => now()
                    ]);
                    // $matched = true;
                // }
            }
    
            // if (!$matched) {
            //     return response()->json([
            //         'status' => false,
            //         'message' => 'Invalid OTP.',
            //     ], 400);
            // }
    
            return response()->json([
                'status' => true,
                'message' => 'Delivery Completed Successfully.',
            ]);
    
        } catch (\Exception $e) {
            return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
            ], 500);
        }
    }



    public function clinicDataCompletednew(Request $request, $id)
    {
        try {
       
            $validator = Validator::make($request->all(), [
                'delivery_coordinates' => 'required',
                'otp' => 'required',
                // 'status' => 'required',
            ]);
    
            if ($validator->fails()) 
            {
                return response()->json([
                    'status' => false,
                    'errors' => $validator->errors()
                ], 422);
            }

            $prescriptions = ClinicPrescription::where('id', $id)->get();
    
            if ($prescriptions->isEmpty())
            {
                return response()->json([
                    'status' => false,
                    'message' => 'No delivery records found.',
                ], 404);
            }
    
            // Check if any record matches the OTP
            // $matched = false;
            foreach ($prescriptions as $prescription) 
            {
                // if ($prescription->otp === $request->otp) {
                    $prescription->update([
                        'status' => 2,
                        'delivery_coordinates' => $request->delivery_coordinates,
                        'otp' => $request->otp,
                    ]);
                    // $matched = true;
                // }
            }
    
            // if (!$matched) {
            //     return response()->json([
            //         'status' => false,
            //         'message' => 'Invalid OTP.',
            //     ], 400);
            // }
    
            return response()->json([
                'status' => true,
                'message' => 'Delivery Completed Successfully.',
            ]);
    
        } catch (\Exception $e) {
            return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
            ], 500);
        }
    }
    
    
    // public function pMedicines(Request $request)
    // {
    //    try {
    //         $request->validate([
    //             'user_id' => 'required',
    //             'pharmacy_id' => 'required',
    //         ]);

    //         $presID=PharmacyPrescription::where('user_id', $request->user_id)
    //                                     ->where('pharmacy_id', $request->pharmacy_id)
    //                                     ->latest()
    //                                     ->first();

                                     

            // $medicinesPhar = PharmacyMedicine::where('pharmacy_prescription_id', $presID->id)
            //                                     ->select(
            //                                         'id',
            //                                         'medicine_name',
            //                                         'quantity',
            //                                         'total',
            //                                         'start_time_1',
            //                                         'end_time_1',
            //                                         'start_time_2',
            //                                         'end_time_2',
            //                                         'start_time_3',
            //                                         'end_time_3',
            //                                         'req_unit',
            //                                         'avail_unit',
            //                                         'amount'
            //                                     )
            //                                     ->get();

        // $medicinesPhar = PharmacyPrescription::where('id', $presID->id)
        // ->select('id','expect_date','payment_method','total_amount',

        // )->get();

        // $medicines = $medicinesPhar->map(function ($medicine) {
        // if ($medicine->req_unit == $medicine->avail_unit) {
        // $medicine->status = 0;
        // } elseif ($medicine->req_unit > $medicine->avail_unit) {
        // $medicine->status = 1;
        // } elseif ($medicine->avail_unit == 0) {
        // $medicine->status = 2;
        // }
        // return $medicine->only(['id','medicine_name', 'quantity', 'amount', 'total', 'req_unit', 'avail_unit', 'status']);
        // });


        // $timeFrame = [];

        // if ($medicinesPhar->isNotEmpty()) {
        // $firstMedicine = $medicinesPhar->first();

        // $timeFrame = [
        // 'start_time_1' => $firstMedicine->start_time_1 ? date('h:i A', strtotime($firstMedicine->start_time_1)) : 'N/A',
        // 'end_time_1' => $firstMedicine->end_time_1 ? date('h:i A', strtotime($firstMedicine->end_time_1)) : 'N/A',
        // 'start_time_2' => $firstMedicine->start_time_2 ? date('h:i A', strtotime($firstMedicine->start_time_2)) : 'N/A',
        // 'end_time_2' => $firstMedicine->end_time_2 ? date('h:i A', strtotime($firstMedicine->end_time_2)) : 'N/A',
        // 'start_time_3' => $firstMedicine->start_time_3 ? date('h:i A', strtotime($firstMedicine->start_time_3)) : 'N/A',
        // 'end_time_3' => $firstMedicine->end_time_3 ? date('h:i A', strtotime($firstMedicine->end_time_3)) : 'N/A'
        // ];
        // }

        // if (count($medicines) == 0) {
        // $medicines = ['No Medicine Available'];
        // }

        // return response()->json([
        // 'medicines' => $medicines,
        // 'time_frame' => $timeFrame,
        // 'pres_id'=>$presID->id
        // ], 200);
        // } 
        
        // catch (Exception $e) 
        // {
        // Log::error($e);
        // return response()->json([
        // 'message' => 'Something went wrong, please try again later.',
        // 'error' => $e->getMessage()
        // ], 500);
        // }
        // }



public function pMedicines(Request $request)
{
    try {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|integer',
            'pharmacy_id' => 'required|integer',
        ]);

        if ($validator->fails()) 
        {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validator->errors()
            ], 422);
        }

        // Get latest prescription ID
        $prescription = PharmacyPrescription::where('user_id', $request->user_id)
            ->where('pharmacy_id', $request->pharmacy_id)
            ->latest()
            ->first();

        if (!$prescription) {
            return response()->json([
                'status' => false,
                'message' => 'No prescription found for this user and pharmacy.'
            ], 404);
        }

        // Select specific fields from the prescription
        $prescriptionDetails = PharmacyPrescription::where('id', $prescription->id)
            ->select('id', 'expect_date', 'payment_method', 'total_amount')
            ->first();

        return response()->json([
            'status' => true,
            'message' => 'Prescription Details Retrieved Successfully.',
            'data' => $prescriptionDetails
        ], 200);

    } 
    catch (\Exception $e) {
        return response()->json([
            'status' => false,
            'message' => 'An error occurred.',
            'error' => $e->getMessage()
        ], 500);
    }
}

    public function cPrescription(Request $request)
    {

        // try {

        //     $request->validate([
        //         'user_id' => 'required',
        //         'name' => 'required|string',
        //         'age' => 'required',
        //         'gender' => 'required',
        //         'clinic_id' => 'required',
        //         'prescription.*' => 'nullable|image',
        //         'test.*' => 'required',
        //         'address' => 'required|string',
        //         'lat_long' => 'nullable|string',
        //         'from_time'=>'nullable|string',
        //         'to_time'=>'nullable|string',
        //         'scheduled_at'=>'required',	
        //     ]);

        //     $prescriptionPaths = [];
        //     if ($request->hasFile('prescription')) 
        //     {
        //         foreach ($request->file('prescription') as $file) 
        //         {
        //             $prescriptionPaths[] = $file->store('clinic_prescriptions', 'public');
        //         }
        //     }
        //     ClinicPrescription::create([
        //         'user_id' => $request->user_id,
        //         'clinic_id' => $request->clinic_id,
        //         'name' => $request->name,
        //         'age' => $request->age,
        //         'from_time' => $request->from_time,
        //         'to_time' => $request->to_time,
        //         'gender' => $request->gender,
        //         'prescription' => json_encode($prescriptionPaths),
        //         'test' => json_encode($request->test),
        //         'address' => $request->address,
        //         'scheduled_at' => $request->scheduled_at,
        //         'lat_long' => $request->lat_long,
        //     ]);
        //     return response()->json(['success' => 'Prescriptions added successfully.'], 200);
        // } 

        // catch (Exception $e) 
        // {
        //     Log::error($e);
        //     return response()->json([
        //         'message' => 'Something went wrong, please try again later.',
        //         'error' => $e->getMessage()
        //     ], 500);
        // }

    
    try {
        $request->validate([
            'user_id' => 'required',
            'name' => 'required|string',
            'age' => 'required',
            'gender' => 'required',
            'clinic_id' => 'required',
            'prescription.*' => 'nullable|image',
            'test.*' => 'required',
            'address' => 'required|string',
            'lat_long' => 'nullable|string',
            'from_time' => 'nullable|string',
            'to_time' => 'nullable|string',
            'scheduled_at' => 'required',
        ]);

        $prescriptionPaths = [];
        if ($request->hasFile('prescription')) {
            foreach ($request->file('prescription') as $file) {
                $prescriptionPaths[] = $file->store('clinic_prescriptions', 'public');
            }
        }

        // Save prescription
        $prescription = ClinicPrescription::create([
            'user_id' => $request->user_id,
            'clinic_id' => $request->clinic_id,
            'name' => $request->name,
            'age' => $request->age,
            'from_time' => $request->from_time,
            'to_time' => $request->to_time,
            'gender' => $request->gender,
            'prescription' => json_encode($prescriptionPaths),
            'test' => json_encode($request->test),
            'address' => $request->address,
            'scheduled_at' => $request->scheduled_at,
            'lat_long' => $request->lat_long,
        ]);

        $user = \App\Models\User::find($request->user_id);

        // if ($user && $user->mobile) {
        //     $templateMessage = "Thanks for your order on {#var#}. We've received your medicine order ID: {#var#} and will notify you once it's processed. Areacode SCB";

        //     $response = Http::get('http://smsgt.niveosys.com/SMS_API/sendsms.php', [
        //         'username'    => 'ascbcomed',
        //         'password'    => 'Comed@123',
        //         'mobile'      => $user->mobile,
        //         'message'     => $templateMessage,
        //         'sendername'  => 'ARDSCB',
        //         'routetype'   => 1,
        //         'tid'         => '1207175446057843677',
        //         'var1'        => now()->format('d-m-Y'),         // Example: 06-08-2025
        //         'var2'        => 'MED' . str_pad($prescription->id, 5, '0', STR_PAD_LEFT), // Example: MED00012
        //     ]);

        //     Log::info('SMS sent response: ' . $response->body());
        // }


        if ($user && $user->mobile) {
    $templateMessage = "Thank you for booking a sample collection on {#var#} for Test ID: {#var#}. We appreciate you choosing {#var#}. Areacode SCB";

    $response = Http::get('http://smsgt.niveosys.com/SMS_API/sendsms.php', [
        'username'    => 'ascbcomed',
        'password'    => 'Comed@123',
        'mobile'      => $user->mobile,
        'message'     => $templateMessage,
        'sendername'  => 'ARDSCB',
        'routetype'   => 1,
        'tid'         => '1207175446057843677', // ✅ your new template ID
        'var1'        => now()->format('d-m-Y'), // ✅ booking date
        'var2'        => 'MED' . str_pad($prescription->id, 5, '0', STR_PAD_LEFT), // ✅ test/prescription ID
        'var3'        => 'CoMed', // ✅ your platform/brand name
    ]);

    Log::info('SMS sent response: ' . $response->body());
}

        return response()->json(['success' => 'Prescriptions added successfully.'], 200);
    } catch (Exception $e) {
        Log::error('Prescription error: ' . $e->getMessage());

        return response()->json([
            'message' => 'Something went wrong, please try again later.',
            'error' => $e->getMessage()
        ], 500);
    }



    }


    public function getPrescriptions(Request $request,$userId)
    {

    try 
    {
        if (!Auth::check()) {
            return response()->json(['error' => 'User not authenticated. Please login.'], 401);
        }

        $authenticatedUserId = Auth::user()->id;

        // Check if passed ID matches the logged-in user
        if ((int)$userId !== $authenticatedUserId) {
            return response()->json(['error' => 'Unauthorized access.'], 403);
        }

            $prescriptions = DB::table('clinic_prescriptions')
            ->join('clinics', 'clinic_prescriptions.clinic_id', '=', 'clinics.id')
            ->where('clinic_prescriptions.user_id', $userId)
            ->select('clinic_prescriptions.id','clinic_prescriptions.name','clinics.clinic_name','clinic_prescriptions.clinic_id','clinic_prescriptions.address','clinic_prescriptions.age',
                            'clinic_prescriptions.gender','clinic_prescriptions.test','clinic_prescriptions.from_time',
            'clinic_prescriptions.to_time','clinic_prescriptions.prescription','clinic_prescriptions.pres_upload',
            'clinic_prescriptions.status',DB::raw('DATE(clinic_prescriptions.scheduled_at) as date'))
            ->get();

        return response()->json(['data' => $prescriptions], 200);

    } 
    catch (Exception $e) 
    {
        Log::error($e);
        return response()->json([
            'message' => 'Something went wrong, please try again later.',
            'error' => $e->getMessage()
        ], 500);
    }


    // try {
    //     $request->validate([
    //         'user_id' => 'required|integer',
    //         // 'clinic_id' => 'required|integer',
    //     ]);

    //     $userId = Auth::user()->id;
    //     // $clinicId = $request->input('clinic_id');

    //     $prescriptions = DB::table('clinic_prescriptions')
    //         ->join('clinics', 'clinic_prescriptions.clinic_id', '=', 'clinics.id')
    //         ->where('clinic_prescriptions.user_id', $userId)
    //         // ->where('clinic_prescriptions.clinic_id', $clinicId)
    //         // ->where('clinic_prescriptions.status', 0)
    //         ->select(
    //             'clinics.clinic_name',
    //             'clinics.tests',
    //             'clinic_prescriptions.start_time',
    //             'clinic_prescriptions.status',
    //             DB::raw('DATE(clinic_prescriptions.created_at) as date')
    //         )
    //         ->get();

    //     return response()->json(['data' => $prescriptions], 200);
    // } catch (\Exception $e) {
    //     Log::error($e);
    //     return response()->json([
    //         'message' => 'Something went wrong, please try again later.',
    //         'error' => $e->getMessage()
    //     ], 500);
    // }

  }


  public function getpharmacyPrescriptions(Request $request,$userId)
  {

  try 
  {
      if (!Auth::check()) {
          return response()->json(['error' => 'User not authenticated. Please login.'], 401);
      }

      $authenticatedUserId = Auth::user()->id;

      // Check if passed ID matches the logged-in user
      if ((int)$userId !== $authenticatedUserId) 
      {
          return response()->json(['error' => 'Unauthorized access.'], 403);
      }

          $prescriptions = DB::table('pharmacy_prescriptions')
          ->leftJoin('payments', 'payments.pres_id','=','pharmacy_prescriptions.id') 
          ->leftJoin('pharmacies', 'pharmacy_prescriptions.pharmacy_id', '=', 'pharmacies.id')
          ->where('pharmacy_prescriptions.user_id', $userId)
          ->select('pharmacy_prescriptions.id','pharmacy_prescriptions.name','payments.ref_no as payment_ref_no','pharmacies.pharmacy_name','pharmacy_prescriptions.pharmacy_id','pharmacy_prescriptions.delivery_address',
                    'pharmacy_prescriptions.prescription','pharmacy_prescriptions.lat_long','pharmacy_prescriptions.payment_method','pharmacy_prescriptions.total_amount',
                    'pharmacy_prescriptions.delivery_id','pharmacy_prescriptions.status',DB::raw('DATE(pharmacy_prescriptions.expect_date) as date'))
          ->get();

      return response()->json(['data' => $prescriptions], 200);

  } 
  catch (Exception $e) 
  {
      Log::error($e);
      return response()->json([
          'message' => 'Something went wrong, please try again later.',
          'error' => $e->getMessage()
      ], 500);
  }
}


  public function updatePrescription(Request $request, $userId, $prescriptionId)
{
    try {
        // Check if user is authenticated
        if (!Auth::check()) {
            return response()->json(['error' => 'User not authenticated. Please login.'], 401);
        }
    
        $authenticatedUserId = Auth::id();
    
        // Ensure user is updating their own record
        if ((int)$userId !== $authenticatedUserId) {
            return response()->json(['error' => 'Unauthorized access.'], 403);
        }
    
        // Validate the request input
        $validated = $request->validate([
            'from_time'     => 'nullable|string',
            'to_time'       => 'nullable|string',
            'prescription'  => 'nullable|string',
            'status'        => 'nullable|string',
            'scheduled_at'  => 'nullable|date'
        ]);
    
        // Check if the prescription record exists
        $prescription = DB::table('clinic_prescriptions')
            ->where('id', $prescriptionId)
            ->where('user_id', $userId)
            ->first();
    
        if (!$prescription) {
            return response()->json(['error' => 'Prescription not found.'], 404);
        }
    
        // Only filter out null values (keep empty strings if needed)
        $dataToUpdate = array_filter($validated, function ($value) {
            return $value !== null;
        });
    
        if (empty($dataToUpdate)) {
            return response()->json(['message' => 'No valid fields provided for update.'], 400);
        }
    
        DB::table('clinic_prescriptions')
            ->where('id', $prescriptionId)
            ->update($dataToUpdate);
    
        return response()->json(['message' => 'Prescription updated successfully.'], 200);
    
    } catch (\Exception $e) {
        Log::error($e);
        return response()->json([
            'message' => 'Something went wrong. Please try again later.',
            'error' => $e->getMessage()
        ], 500);
    }
    
}


  public function getPharmacyhistory(Request $request, $userId)
{
    try {
        if (!Auth::check()) {
            return response()->json(['error' => 'User not authenticated. Please login.'], 401);
        }

        $authenticatedUserId = Auth::user()->id;

        if ((int)$userId !== $authenticatedUserId) {
            return response()->json(['error' => 'Unauthorized access.'], 403);
        }

    //   $history = DB::table('pharmacy_prescriptions')
    // ->leftJoin('pharmacy_medicines', 'pharmacy_medicines.pharmacy_prescription_id', '=', 'pharmacy_prescriptions.id')
    // ->leftJoin('pharmacies', 'pharmacy_prescriptions.pharmacy_id', '=', 'pharmacies.id')
    // ->leftJoin('payments', 'payments.pres_id','=','pharmacy_prescriptions.pharmacy_id')
    // ->where('pharmacy_prescriptions.user_id', $userId)
    // ->select(
    //     'payments.trans_status as payment_status',
    //     'pharmacy_medicines.reffrnce as payment_ref_no',
    //     'pharmacy_medicines.total as payment_amount',
    //     'pharmacy_medicines.created_at as payment_date',
    //     'pharmacies.pharmacy_name',
    //     'pharmacy_prescriptions.status'
    // )
    // ->get();


    $history = DB::table('pharmacy_prescriptions')
    ->leftJoin('pharmacy_medicines', 'pharmacy_medicines.pharmacy_prescription_id', '=', 'pharmacy_prescriptions.id')
    ->leftJoin('pharmacies', 'pharmacy_prescriptions.pharmacy_id', '=', 'pharmacies.id')
    ->leftJoin('payments', 'payments.pres_id','=','pharmacy_prescriptions.id')  // Fixed the join condition
    ->where('pharmacy_prescriptions.user_id', $userId)
    ->select(
        'payments.trans_status as payment_status',
        'payments.ref_no as payment_ref_no',
        'pharmacy_medicines.total as payment_amount',
        'pharmacy_medicines.created_at as payment_date',
        'pharmacies.pharmacy_name',
        'pharmacy_prescriptions.status'
    )
    ->get();


        return response()->json(['data' => $history], 200);
        
    } catch (\Exception $e) {
        Log::error($e);
        return response()->json([
            'message' => 'Something went wrong, please try again later.',
            'error' => $e->getMessage()
        ], 500);
    }
}



public function getCashDelivery(Request $request, $userId)
{
    try {
        if (!Auth::check()) {
            return response()->json(['error' => 'User not authenticated. Please login.'], 401);
        }

        $authenticatedUserId = Auth::user()->id;

        if ((int)$userId !== $authenticatedUserId) {
            return response()->json(['error' => 'Unauthorized access.'], 403);
        }


        $history = DB::table('pharmacy_prescriptions')
        ->leftJoin('payments', 'payments.pres_id','=','pharmacy_prescriptions.id')  // Fixed the join condition
        ->where('pharmacy_prescriptions.user_id', $userId)
        ->where('pharmacy_prescriptions.payment_method', 2)
        ->select('pharmacy_prescriptions.id','pharmacy_prescriptions.status','pharmacy_prescriptions.total_amount','pharmacy_prescriptions.payment_method'
        )
        ->get();
    
    
            return response()->json(['data' => $history], 200);
            
        } catch (\Exception $e) {
            Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }



    public function pCashDelivery(Request $request)
    {
        try {
            if (!Auth::check()) {
                return response()->json(['error' => 'User not authenticated. Please login.'], 401);
            }
    
            $authenticatedUserId = Auth::id();
    
            $request->validate([
                'id'             => 'required|integer',
                'total_amount'   => 'required|numeric',
                'payment_method' => 'required|in:1,2',
            ]);
    
            $prescriptionId = $request->id;
    
            // Verify prescription ownership
            $prescription = DB::table('pharmacy_prescriptions')
                ->where('id', $prescriptionId)
                ->where('user_id', $authenticatedUserId)
                ->first();
    
            if (!$prescription) {
                return response()->json(['error' => 'Prescription not found or unauthorized.'], 403);
            }
    
            // ✅ Update the prescription status, payment method, and total_amount
            DB::table('pharmacy_prescriptions')
                ->where('id', $prescriptionId)
                ->update([
                    'status'         => 2,
                    'payment_method' => $request->payment_method,
                    'total_amount'   => $request->total_amount,
                    'updated_at'     => now()
                ]);
    
            // Optional: fetch updated record
            $updatedData = DB::table('pharmacy_prescriptions')
                ->leftJoin('payments', 'payments.pres_id', '=', 'pharmacy_prescriptions.id')
                ->where('pharmacy_prescriptions.id', $prescriptionId)
                ->select(
                    'pharmacy_prescriptions.id',
                    'pharmacy_prescriptions.total_amount',
                    'pharmacy_prescriptions.payment_method',
                    'pharmacy_prescriptions.status'
                )
                ->first();
    
            return response()->json(['message' => 'Updated successfully.', 'data' => $updatedData], 200);
    
        } catch (\Exception $e) {
            \Log::error('pCashDelivery error: ' . $e->getMessage());
    
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error'   => $e->getMessage()
            ], 500);
        }
    }
    


public function updatePaymentMethod(Request $request, $id)
{
    try {
        // 1. Ensure user is authenticated
        if (!Auth::check()) {
            return response()->json(['error' => 'User not authenticated. Please login.'], 401);
        }

        $authenticatedUserId = Auth::user()->id;

        // 2. Validate request
        $validated = $request->validate([
            'payment_method' => 'required|in:1,2', // 1: Online, 2: Cash on Delivery
        ]);

        // 3. Check that the prescription exists and belongs to the user
        $prescription = DB::table('pharmacy_prescriptions')
            ->where('id', $id)
            ->where('user_id', $authenticatedUserId)
            ->first();

        if (!$prescription) {
            return response()->json(['error' => 'Prescription not found or unauthorized access.'], 404);
        }

        // 4. Update the payment method
        DB::table('pharmacy_prescriptions')
            ->where('id', $id)
            ->update([
                'payment_method' => $validated['payment_method'],
                'updated_at' => now()
            ]);

        return response()->json([
            'message' => 'Payment method updated successfully.',
            'payment_method' => $validated['payment_method']
        ], 200);

    } catch (\Exception $e) {
        return response()->json([
            'error' => 'An error occurred while updating payment method.',
            'details' => $e->getMessage()
        ], 500);
    }
}




    // public function cancelPharMedicine($id)
    // {
    //     try{
    //          PharmacyMedicine::where('pharmacy_prescription_id','=',$id)
    //                             ->delete();   
    //           return response()->json(['success' => 'Order Cancelled Successfully.'], 200);
    //     }catch(Exception $e){
    //         return response()->json([
    //             'message' => 'Something went wrong, please try again later.',
    //             'error' => $e->getMessage()
    //         ], 500);
    //     }
    // }

        // public function cancelPharMedicine($id)
        // {
        // try {
        // DB::beginTransaction();

        // $prescription = PharmacyPrescription::findOrFail($id);
        // $prescription->delete();

        // DB::commit();

        // return response()->json(['success' => 'Prescription cancelled successfully.'], 200);
        // } 
        // catch (Exception $e) {
        // DB::rollBack();

        // return response()->json([
        //     'message' => 'Something went wrong, please try again later.',
        //     'error' => $e->getMessage()
        // ], 500);
        // }
        // }

        public function cancelPharMedicine($id)
        {
        try {
        DB::beginTransaction();

        $prescription = PharmacyPrescription::findOrFail($id);
        $prescription->forceDelete();  // This permanently deletes the row

        DB::commit();

        return response()->json(['success' => 'Prescription cancelled successfully.'], 200);
        } 
        catch (\Exception $e) {
        DB::rollBack();

        return response()->json([
            'message' => 'Something went wrong, please try again later.',
            'error' => $e->getMessage()
        ], 500);
        }
        }





}
