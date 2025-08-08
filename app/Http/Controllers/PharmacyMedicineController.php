<?php

namespace App\Http\Controllers;

use App\Models\DeliveryAgent;
use App\Models\Log;
use Illuminate\Http\Request;
use App\Models\PharmacyMedicine;
use Illuminate\Support\Facades\Auth;
use App\Models\PharmacyPrescription as pprescription;

class PharmacyMedicineController extends Controller
{
    public function addMedicine(Request $request)
    {
   

        

        $request->validate([
        'pharmacy_prescription_id' => 'required',
        'payment_method.*' => 'nullable|string',
        'total_amount.*' => 'nullable|numeric',

        ]);


        Log::create([
                    'user_id' => auth()->id(),
                    'log_type' => 'Payment is done',
                    'message' =>  'Pharmacy Prescription Payment is' .'created by: ' . Auth::user()->name,
                ]);


            // pprescription::where('id', '=', $request->pharmacy_prescription_id)->update([
            // 'payment_method' => $request->payment_method,
            // 'total_amount' => $request->total_amount,
            // 'expect_date' => $request->expect_date,
            // 'status'=>$request->status,
            // 'delivery_id'=>$request->assigned_user,
            // ]);


            $prescription = pprescription::findOrFail($request->pharmacy_prescription_id);
            $prescription->status = $request->status;

            if (!is_null($request->payment_method))
            {
            $prescription->payment_method = $request->payment_method;
            }

            if (!is_null($request->total_amount)) 
            {
            $prescription->total_amount = $request->total_amount;
            }

            if (!is_null($request->expect_date)) 
            {
            $prescription->expect_date = $request->expect_date;
            }

            if (!is_null($request->assigned_user)) 
            {
            $prescription->delivery_id = $request->assigned_user;
            }

            $prescription->save();



            

            $presData =pprescription::leftJoin('pharmacy_medicines','pharmacy_medicines.id','=','pharmacy_prescriptions.pharmacy_id')
                                    ->leftJoin('users','users.id','=','pharmacy_prescriptions.user_id')
                                    ->where('pharmacy_prescriptions.id', '=', $request->pharmacy_prescription_id)
                                    ->select('pharmacy_prescriptions.delivery_address as delivery_address','pharmacy_prescriptions.lat_long as lat_long',
                                    'users.phone_number as customer_no','users.id as customer_id')
                                    ->first();       

        return redirect()->route('pharmacy-prescriptions.index');


        // $request->validate([
        //     'pharmacy_prescription_id'  => 'required|exists:pharmacy_prescriptions,id',
        //     'payment_method'            => 'nullable|in:1,2',
        //     'total_amount'              => 'nullable|numeric',
        //     'assigned_user'             => 'nullable|exists:users,id',
        // ]);
    
        // $prescription = pprescription::findOrFail($request->pharmacy_prescription_id);
    
    
        // if ($request->filled('status')) 
        // {
        // $updateData['status'] = $request->status;
        // }
        
    
        // if ($request->filled('payment_method')) 
        // {
        // $updateData['payment_method'] = $request->payment_method;
        // }

        // if ($request->filled('total_amount')) 
        // {
        // $updateData['total_amount'] = $request->total_amount;
        // }
    
        // if ($request->filled('expect_date')) 
        // {
        // $updateData['expect_date'] = $request->expect_date;
        // }
    
        // if ($request->filled('assigned_user')) 
        // {
        // $updateData['delivery_id'] = $request->assigned_user;
        // }
    
        // Log::create([
        //     'user_id' => auth()->id(),
        //     'log_type' => 'Payment is done',
        //     'message' => 'Pharmacy Prescription Payment is created by: ' . auth()->user()->name,
        // ]);
    
        // $prescription->update($updateData);
    
        // return redirect()->route('pharmacy-prescriptions.index')->with('success', 'Prescription updated.');


    //     try {
    //         $request->validate([
    //             'pharmacy_prescription_id' => 'required|exists:pharmacy_prescriptions,id',
    //             'payment_method'           => 'nullable|in:1,2',
    //             'total_amount'             => 'nullable|numeric',
    //             'assigned_user'            => 'nullable|exists:users,id',
    //         ]);
    
    //         $prescription = pprescription::findOrFail($request->pharmacy_prescription_id);
    
    //         $updateData = [];
    
    //         if ($request->filled('status')) {
    //             $updateData['status'] = $request->status + 1;
    //         }
    
    //         if ($request->filled('payment_method')) {
    //             $updateData['payment_method'] = $request->payment_method;
    //         }
    
    //         if ($request->filled('total_amount')) {
    //             $updateData['total_amount'] = $request->total_amount;
    //         }
    
    //         if ($request->filled('expect_date')) {
    //             $updateData['expect_date'] = $request->expect_date;
    //         }
    
    //         if ($request->filled('assigned_user')) {
    //             $updateData['delivery_id'] = $request->assigned_user;
    //         }
    
    //         Log::create([
    //             'user_id'  => auth()->id(),
    //             'log_type' => 'Payment is done',
    //             'message'  => 'Pharmacy Prescription Payment is created by: ' . auth()->user()->name,
    //         ]);
    
    //         $prescription->update($updateData);
    
    //         return redirect()->route('pharmacy-prescriptions.index')->with('success', 'Prescription updated.');
            
    //     } catch (\Throwable $e) {
    //         \Log::error('Failed to update prescription: ' . $e->getMessage());
    
    //         // Optional: Return back with error message
    //         return redirect()->back()->withErrors('Something went wrong: ' . $e->getMessage())->withInput();
            
    //         // Or for API response:
    //         // return response()->json(['error' => 'Something went wrong', 'message' => $e->getMessage()], 500);
    //     }

     }





}
