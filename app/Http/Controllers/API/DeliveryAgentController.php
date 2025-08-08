<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\DeliveryAgent;
use Exception;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\PharmacyPrescription;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DeliveryAgentController extends Controller
{
    public function deliveryRequests()
    {
        try 
        {
            $userId = Auth::user()->id;
            $deliverRequest = DeliveryAgent::leftJoin('users', 'users.id', '=', 'delivery_agents.customer_id')
                ->leftJoin('pharmacy_prescriptions','pharmacy_prescriptions.id','=','delivery_agents.pres_id')
                ->where('delivery_status', 0)
                ->where('delivery_agent_id', $userId)
                // ->select('users.name as customer_name', 'delivery_agents.address as deliv_address', 'delivery_agents.coordinates as deliv_coordinates', 'delivery_agents.customer_mob', 'delivery_agents.id', 'delivery_agents.otp as otp')
                
                ->select(
                'users.name as customer_name',
                'delivery_agents.address as deliv_address',
                'delivery_agents.coordinates as deliv_coordinates',
                'delivery_agents.customer_mob',
                'delivery_agents.id as delivery_agent_id',
                'delivery_agents.otp as otp',
                'pharmacy_prescriptions.total_amount',  // All fields from pharmacy_prescriptions
                DB::raw("
                CASE pharmacy_prescriptions.payment_method
                WHEN 1 THEN 'Online Payment'
                WHEN 2 THEN 'Cash on Delivery'
                ELSE 'Unknown'
                END as payment_method
                ")
                )

                ->get();
            return response()->json(['deliveryData' => $deliverRequest]);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
            ], 500);
        }
    }





    public function deliveryCompleted(Request $request, $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'delivered_coordinates' => 'required',
                'otp' => 'required',
            ]);

            if ($validator->fails()) {

                return response()->json([
                    'status' => false,
                    'errors' => $validator->errors()
                ], 422);
            }
            $deliveryAgent = DeliveryAgent::where('id', $id)->where('otp', $request->otp)->first();

            if ($deliveryAgent) {
                $deliveryAgent->update([
                    'delivery_status'=>1,
                    'delivered_coordinates' => $request->delivered_coordinates,
                ]);

                PharmacyPrescription::where('id',$deliveryAgent->pres_id)->update([
                    'status'=>3
                ]);

                return response()->json([
                    'message' => 'Delivery Completed Successfully.',
                ]);
            } else {
                return response()->json([
                    'message' => 'Invalid OTP.',
                ], 400);
            }
        } 
        catch (Exception $e) 
        {
           return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
            ], 500);
        }

    }


    // public function pharmacydeliveryCompleted(Request $request, $id)
    // {
    //     try {
    //         $validator = Validator::make($request->all(), [
    //             'delivered_coordinates' => 'required',
    //             'otp' => 'required',
    //         ]);

    //         if ($validator->fails()) {

    //             return response()->json([
    //                 'status' => false,
    //                 'errors' => $validator->errors()
    //             ], 422);
    //         }
    //         $deliveryAgent = DeliveryAgent::where('id', $id)->where('otp', $request->otp)->first();

    //         if ($deliveryAgent) {
    //             $deliveryAgent->update([
    //                 'delivery_status'=>1,
    //                 'delivered_coordinates' => $request->delivered_coordinates,
    //             ]);

    //             PharmacyPrescription::where('id',$deliveryAgent->pres_id)->update([
    //                 'status'=>4
    //             ]);

    //             return response()->json([
    //                 'message' => 'Delivery Completed Successfully.',
    //             ]);
    //         } else {
    //             return response()->json([
    //                 'message' => 'Invalid OTP.',
    //             ], 400);
    //         }
    //     } 
    //     catch (Exception $e) {
    //        return response()->json([
    //             'error' => true,
    //             'message' => $e->getMessage(),
    //         ], 500);
    //     }
    // }




    public function pharmacydeliveryCompleted(Request $request, $id)
{
    try {
        $validator = Validator::make($request->all(), [
            'delivered_coordinates' => 'required',
            'otp'                   => 'required',
            'payment_status'        => 'nullable|in:Yes,No',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        $prescription = PharmacyPrescription::find($id);

        if (!$prescription) {
            return response()->json([
                'status' => false,
                'message' => 'No delivery records found.',
            ], 404);
        }

        // ✅ Optional: Validate OTP
        if ($prescription->otp !== $request->otp) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid OTP.',
            ], 400);
        }

     
        $prescription->status = 4;
        $prescription->delivery_coordinates = $request->delivered_coordinates;
        $prescription->otp = $request->otp; // Optional: might not need to overwrite
       $prescription->updated_at = now(); // or Carbon::parse($request->timestamp);
        $prescription->save();

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



    // public function pharmacydeliveryCompleted(Request $request, $id)
    // {
    //     try {
       
    //         $validator = Validator::make($request->all(), [
    //         'delivered_coordinates' => 'required',
    //         'otp'                   => 'required',
    //         'payment_status'        => 'nullable|in:Yes,No', // optional, only required conditionally
    //         ]);
    
    //         if ($validator->fails()) 
    //         {
    //             return response()->json([
    //                 'status' => false,
    //                 'errors' => $validator->errors()
    //             ], 422);
    //         }

    //         // $prescriptions = PharmacyPrescription::where('id', $id)->get();
    //         $prescription = PharmacyPrescription::find($id);

    
    //         if ($prescriptions->isEmpty())
    //         {
    //             return response()->json([
    //                 'status' => false,
    //                 'message' => 'No delivery records found.',
    //             ], 404);
    //         }
    
    //         // Check if any record matches the OTP
    //         // $matched = false;
    //         foreach ($prescriptions as $prescription) 
    //         {
    //             // if ($prescription->otp === $request->otp) {
    //                 $prescription->update([
    //                     'status' => 4,
    //                     'delivery_coordinates' => $request->delivered_coordinates,
    //                     'otp' => $request->otp,
    //                     // 'otp' => $request->otp,
    //                 ]);
    //                 // $matched = true;
    //             // }
    //         }
    
    //         // if (!$matched) {
    //         //     return response()->json([
    //         //         'status' => false,
    //         //         'message' => 'Invalid OTP.',
    //         //     ], 400);
    //         // }
    
    //         return response()->json([
    //             'status' => true,
    //             'message' => 'Delivery Completed Successfully.',
    //         ]);
    
    //     } catch (\Exception $e) {
    //         return response()->json([
    //             'error' => true,
    //             'message' => $e->getMessage(),
    //         ], 500);
    //     }
    // }

    // public function pharmacydeliveryCompleted(Request $request, $id)
    // {
    // try {
    //     $validator = Validator::make($request->all(), [
    //         'delivered_coordinates' => 'required',
    //         'otp' => 'required',
    //         'payment_status' => 'nullable|in:Yes,No', // optional, only required conditionally
    //     ]);

    //     if ($validator->fails()) 
    //     {
    //         return response()->json([
    //             'status' => false,
    //             'errors' => $validator->errors()
    //         ], 422);
    //     }

    //     $deliveryAgent = DeliveryAgent::where('id', $id)
    //                         ->where('otp', $request->otp)
    //                         ->first();

    //     if (!$deliveryAgent) 
    //     {
    //         return response()->json([
    //             'message' => 'Invalid OTP.',
    //         ], 400);
    //     }

    //     $prescription = PharmacyPrescription::find($deliveryAgent->pres_id);


    //     if (!$prescription) 
    //     {
    //         return response()->json([
    //             'message' => 'Prescription not found.',
    //         ], 404);
    //     }

    //     if ($prescription->payment_method == 2) 
    //     {
    //         if (!$request->has('payment_status')) 
    //         {
    //             return response()->json([
    //                 'status' => false,
    //                 'message' => 'Payment status is required for Cash on Delivery.',
    //             ], 422);
    //         }

    //         $prescription->payment_status = $request->payment_status;
    //     }

    //     $prescription->status = 4;
    //     $prescription->save();

    //     $deliveryAgent->update([
    //         'delivery_status' => 1,
    //         'delivered_coordinates' => $request->delivered_coordinates,
    //     ]);

    //     return response()->json([
    //         'message' => 'Delivery Completed Successfully.',
    //     ]);

    // } 
    
    // catch (Exception $e) 
    // {
    //     return response()->json([
    //         'error' => true,
    //         'message' => $e->getMessage(),
    //     ], 500);
    // }
    // }


    }
