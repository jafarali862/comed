<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use App\Models\Log;
use App\Models\User;
use App\Models\Clinic;
use Illuminate\Http\Request;
use App\Models\ClinicPrescription;
use Illuminate\Support\Facades\Auth;

class ClinicPrescriptionController extends Controller
{
    public function index(Request $request)
    {
        // $clinicPrescriptions = ClinicPrescription::paginate(15);
        // return view('backend.clinicpres.index', compact('clinicPrescriptions'));

         $status = $request->input('status_filter', 0);

    // Filter prescriptions by status
    $clinicPrescriptions = ClinicPrescription::where('status', $status)->orderBy('created_at', 'desc')->paginate(10);

    return view('backend.clinicpres.index', compact('clinicPrescriptions', 'status'));

    }

    public function index2()
    {
        $clinicPrescriptions = ClinicPrescription::paginate(10);
        return view('backend.clinicpres2.index', compact('clinicPrescriptions'));
    }

    public function edit($id)
    {
        // $clinicPrescription = ClinicPrescription::findOrFail($id);

        $clinicPrescription = ClinicPrescription::with('deliveryAgent')->findOrFail($id);

        $deliveryAgents=User::where('user_type',1)->get();

        $status = $clinicPrescription->status;
        if ($status != 2 && $status != 3) {
            // ClinicPrescription::where('id', $id)->update([
            //     'status' => 1,
            // ]);
        }

        $cPres=ClinicPrescription::where('id',$id)->first();
        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'clinic Prescription Processed',
            'message' =>  'clinic Prescription user:'.$cPres->user->name. ' processed by: ' . Auth::user()->name,
        ]);

        $users = User::all();
        $clinic = Clinic::all();
        return view('backend.clinicPres.edit_cpres', compact('clinicPrescription', 'users', 'clinic','deliveryAgents'));
    }


      public function edit2($id)
    {
        $clinicPrescription = ClinicPrescription::findOrFail($id);
        $status = $clinicPrescription->status;
        if ($status != 2 && $status != 3) {
            // ClinicPrescription::where('id', $id)->update([
            //     'status' => 1,
            // ]);
        }

        $cPres=ClinicPrescription::where('id',$id)->first();
        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'clinic Prescription Processed',
            'message' =>  'clinic Prescription user:'.$cPres->user->name. ' processed by: ' . Auth::user()->name,
        ]);

        $users = User::all();
        $clinic = Clinic::all();
        return view('backend.clinicPres2.edit_cpres', compact('clinicPrescription', 'users', 'clinic'));
    }

    // public function update(Request $request, $id)
    // {
    //     $request->validate([

    //         'address' => 'required|string',
    //         'status' => 'nullable'
    //     ]);

    //     $ClinicPrescriptions = ClinicPrescription::findOrFail($id);
    //     $ClinicPrescriptions->address = $request->address;
    //     $ClinicPrescriptions->status = $request->status;
    //     $ClinicPrescriptions->delivery_id = $request->delivery_id;
        

    //     if ($request->start_time) 
    //     {

    //     try 
    //     {
            
    //         $time = Carbon::createFromFormat('h:i A', $request->start_time);
    //     } 

    //     catch (\Exception $e1) 
    //     {
    //         try {
            
    //             $time = Carbon::createFromFormat('H:i', $request->start_time);
    //         } 
    //         catch (\Exception $e2) 
    //         {
    //             return response()->json(['error' => 'Invalid time format. Please use HH:MM or HH:MM AM/PM.'], 422);
    //         }
    //     }

    //     $ClinicPrescriptions->start_time = $time->format('h:i A');
    // }
    //     $ClinicPrescriptions->save();

    //     Log::create([
    //         'user_id' => auth()->id(),
    //         'log_type' => 'clinic Prescription updated',
    //         'message' =>  'clinic address:'.$request->address. 'and status:'.$request->status .' updated by: ' . Auth::user()->name,
    //     ]);
    //     return redirect()->route('clinic-prescriptions.index')->with('success', 'Prescription updated successfully.');
    // }

    public function update(Request $request, $id)
   {
    $request->validate([
        'address' => 'required|string',
        'status' => 'nullable',
        'pres_upload' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:2048', // adjust types & size as needed
    ]);

    $ClinicPrescriptions = ClinicPrescription::findOrFail($id);
    $ClinicPrescriptions->address = $request->address;
    $ClinicPrescriptions->status = $request->status;

    // $ClinicPrescriptions->delivery_id = $request->delivery_id;

    if ($request->filled('delivery_id')) {
        $ClinicPrescriptions->delivery_id = $request->delivery_id;
    }
    


    // if ($request->filled('delivery_id')) {
    // $ClinicPrescriptions->delivery_id = $request->delivery_id;
    // }

    // Handle start_time as before

    // if ($request->start_time) 
    // {
    //     try 
    //     {
    //         $time = Carbon::createFromFormat('h:i A', $request->start_time);
    //     } 
    //     catch (\Exception $e1) 
    //     {
    //         try 
    //         {
    //             $time = Carbon::createFromFormat('H:i', $request->start_time);
    //         } 
    //         catch (\Exception $e2) 
    //         {
    //             return response()->json(['error' => 'Invalid time format. Please use HH:MM or HH:MM AM/PM.'], 422);
    //         }
    //     }
    //     $ClinicPrescriptions->start_time = $time->format('h:i A');
    // }

    // Handle file upload
    if ($request->hasFile('pres_upload')) {
        $file = $request->file('pres_upload');
        $filename = time() . '_' . $file->getClientOriginalName();
        $path = $file->storeAs('prescriptions', $filename, 'public');

        // Assuming you have a column 'pres_upload' in your table to save the filename/path
        $ClinicPrescriptions->pres_upload = $path;
    }

    $ClinicPrescriptions->save();

    Log::create([
        'user_id' => auth()->id(),
        'log_type' => 'clinic Prescription updated',
        'message' =>  'clinic address:'.$request->address. ' and status:'.$request->status .' updated by: ' . auth()->user()->name,
    ]);

    return redirect()->route('clinic-prescriptions.index')->with('success', 'Prescription updated successfully.');
}


    public function update2(Request $request, $id)
    {
        $request->validate([

            'address' => 'required|string',
            'status' => 'nullable'
        ]);

        $ClinicPrescriptions = ClinicPrescription::findOrFail($id);
        $ClinicPrescriptions->address = $request->address;
        $ClinicPrescriptions->status = $request->status;
        //   $ClinicPrescriptions->start_time = $request->start_time;

               if ($request->start_time) {
        try {
            // Try 12-hour format first
            $time = Carbon::createFromFormat('h:i A', $request->start_time);
        } catch (\Exception $e1) {
            try {
                // Fallback to 24-hour format
                $time = Carbon::createFromFormat('H:i', $request->start_time);
            } catch (\Exception $e2) {
                return response()->json(['error' => 'Invalid time format. Please use HH:MM or HH:MM AM/PM.'], 422);
            }
        }

        // Save time in AM/PM format (as string)
        $ClinicPrescriptions->start_time = $time->format('h:i A');
    }
        $ClinicPrescriptions->save();

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'clinic Prescription updated',
            'message' =>  'clinic address:'.$request->address. 'and status:'.$request->status .' updated by: ' . Auth::user()->name,
        ]);
        return redirect()->route('clinic-prescriptions2.index')->with('success', 'Prescription updated successfully.');
    }


    public function clinicPresStatus(Request $request)
    {
        $query = $request->input('status');

        $cPrescriptions = ClinicPrescription::where('status', '=', $query)->orderBy('created_at', 'desc')->paginate(10);

        $output = '';
        foreach ($cPrescriptions as $prescription) {
            $prescriptionImages = '';
            if ($prescription->prescription) {
                $images = json_decode($prescription->prescription, true);
                // foreach ($images as $image) {
                //     $prescriptionImages .= '<img src="' . asset('storage/' . $image) . '" alt="Prescription Image" width="100" height="70" class="mr-1 mb-1">';
                // }
                if(count($images) > 1){
                    $prescriptionImages .= ' <i class="fas fa-images" style="color: green; font-size: 20px;"> +'. count($images) .'</i>';
                }else{
                    $prescriptionImages .= '<i class="fas fa-images" style="color: green; font-size: 20px;"></i>';
                }
            } else {
                $prescriptionImages = '<span>No image</span>';
            }

            if ($prescription->test) {
                $tests = json_decode($prescription->test, true);
                foreach ($tests as $test) {
                    $test;
                }
            } else {
                $test = '<span>No Tests</span>';
            }


            $output .= '
                        <tr>
                            <td>' . $prescription->user->name . '</td>
                            <td>' . $prescription->name . '</td>
                            <td>' . $prescription->age . '</td>
                            <td>' . $prescription->gender . '</td>
                            <td>' . $prescription->clinic->clinic_name . '</td>
                            <td>' . $prescriptionImages . '</td>
                            <td>' . $prescription->address . '</td>
                            <td>' . $test . '</td>
                            <td>' . $prescription->lat_long . '</td>  
                            <td>
                                <button class="btn btn-warning btn-sm open-edit-modal" data-id="' . $prescription->id . '" title="Edit">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </td>
                        </tr>';
        }

        return response([
            'output' => $output,
            'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->render(),
            // 'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->toHtml(),
        ]);
    }

       public function clinicPresStatus2(Request $request)
    {
        $query = $request->input('status');

        $cPrescriptions = ClinicPrescription::where('status', '=', $query)->paginate(10);

        $output = '';
        foreach ($cPrescriptions as $prescription) {
            $prescriptionImages = '';
            if ($prescription->prescription) {
                $images = json_decode($prescription->prescription, true);
                // foreach ($images as $image) {
                //     $prescriptionImages .= '<img src="' . asset('storage/' . $image) . '" alt="Prescription Image" width="100" height="70" class="mr-1 mb-1">';
                // }
                if(count($images) > 1){
                    $prescriptionImages .= ' <i class="fas fa-images" style="color: green; font-size: 20px;"> +'. count($images) .'</i>';
                }else{
                    $prescriptionImages .= '<i class="fas fa-images" style="color: green; font-size: 20px;"></i>';
                }
            } else {
                $prescriptionImages = '<span>No image</span>';
            }

            if ($prescription->test) {
                $tests = json_decode($prescription->test, true);
                foreach ($tests as $test) {
                    $test;
                }
            } else {
                $test = '<span>No Tests</span>';
            }


            $output .= '
                        <tr>
                            <td>' . $prescription->user->name . '</td>
                            <td>' . $prescription->name . '</td>
                            <td>' . $prescription->age . '</td>
                            <td>' . $prescription->gender . '</td>
                            <td>' . $prescription->clinic->clinic_name . '</td>
                            <td>' . $prescriptionImages . '</td>
                            <td>' . $prescription->address . '</td>
                            <td>' . $test . '</td>
                            <td>' . $prescription->lat_long . '</td>  
                            <td>
                                <button class="btn btn-warning btn-sm open-edit-modal" data-id="' . $prescription->id . '" title="Edit">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </td>
                        </tr>';
        }

        return response([
            'output' => $output,
            'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->render(),
            // 'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->toHtml(),
        ]);
    }

    public function clinicPresDate(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');



        $cPrescriptions = ClinicPrescription::whereBetween('created_at', [$startDate . '%', $endDate . '%'])->paginate(10);

        $output = '';
        foreach ($cPrescriptions as $prescription) {
            $prescriptionImages = '';
            if ($prescription->prescription) {
                $images = json_decode($prescription->prescription, true);
                // foreach ($images as $image) {
                //     $prescriptionImages .= '<img src="' . asset('storage/' . $image) . '" alt="Prescription Image" width="100" height="70" class="mr-1 mb-1">';
                // }
                if(count($images) > 1){
                    $prescriptionImages .= ' <i class="fas fa-images" style="color: green; font-size: 20px;"> +'. count($images) .'</i>';
                }else{
                    $prescriptionImages .= '<i class="fas fa-images" style="color: green; font-size: 20px;"></i>';
                }
            } else {
                $prescriptionImages = '<span>No image</span>';
            }

            if ($prescription->test) {
                $tests = json_decode($prescription->test, true);
                foreach ($tests as $test) {
                    $test;
                }
            } else {
                $test = '<span>No Tests</span>';
            }

            $output .= '
            <tr>
                            <td>' . $prescription->user->name . '</td>
                            <td>' . $prescription->name . '</td>
                            <td>' . $prescription->age . '</td>
                            <td>' . $prescription->gender . '</td>
                            <td>' . $prescription->clinic->clinic_name . '</td>
                            <td>' . $prescriptionImages . '</td>
                            <td>' . $prescription->address . '</td>
                            <td>' . $test . '</td>
                            <td>' . $prescription->lat_long . '</td>  
                            <td>
                                <button class="btn btn-warning btn-sm open-edit-modal" data-id="' . $prescription->id . '" title="Edit">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </td>
                        </tr>';
        }

        return response([
            'output' => $output,
            'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->toHtml(),
        ]);
    }


      public function clinicPresDate2(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');



        $cPrescriptions = ClinicPrescription::whereBetween('created_at', [$startDate . '%', $endDate . '%'])->paginate(10);

        $output = '';
        foreach ($cPrescriptions as $prescription) {
            $prescriptionImages = '';
            if ($prescription->prescription) {
                $images = json_decode($prescription->prescription, true);
                // foreach ($images as $image) {
                //     $prescriptionImages .= '<img src="' . asset('storage/' . $image) . '" alt="Prescription Image" width="100" height="70" class="mr-1 mb-1">';
                // }
                if(count($images) > 1){
                    $prescriptionImages .= ' <i class="fas fa-images" style="color: green; font-size: 20px;"> +'. count($images) .'</i>';
                }else{
                    $prescriptionImages .= '<i class="fas fa-images" style="color: green; font-size: 20px;"></i>';
                }
            } else {
                $prescriptionImages = '<span>No image</span>';
            }

            if ($prescription->test) {
                $tests = json_decode($prescription->test, true);
                foreach ($tests as $test) {
                    $test;
                }
            } else {
                $test = '<span>No Tests</span>';
            }

            $output .= '
            <tr>
                            <td>' . $prescription->user->name . '</td>
                            <td>' . $prescription->name . '</td>
                            <td>' . $prescription->age . '</td>
                            <td>' . $prescription->gender . '</td>
                            <td>' . $prescription->clinic->clinic_name . '</td>
                            <td>' . $prescriptionImages . '</td>
                            <td>' . $prescription->address . '</td>
                            <td>' . $test . '</td>
                            <td>' . $prescription->lat_long . '</td>  
                            <td>
                                <button class="btn btn-warning btn-sm open-edit-modal" data-id="' . $prescription->id . '" title="Edit">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </td>
                        </tr>';
        }

        return response([
            'output' => $output,
            'pagination' => $cPrescriptions->links('pagination::bootstrap-5')->toHtml(),
        ]);
    }

}
