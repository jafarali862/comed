<?php

namespace App\Http\Controllers;

use App\Models\Pharmacy;
use App\Models\PharmacyPrescription;
use App\Models\ClinicPrescription;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\Models\Log;
use Illuminate\Support\Facades\DB;
use Exception;
use Illuminate\Support\Facades\Log as Logs;
use App\Exports\DaybookExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;

class PharmacyController extends Controller
{
    public function index()
    {
        $pharmacies = Pharmacy::all();
        return view('backend.pharmacy.index', compact('pharmacies'));
    }

    public function index2()
    {
        $pharmacies = Pharmacy::all();
        return view('backend.pharmacy2.index', compact('pharmacies'));
    }


    public function create()
    {
        return view('backend.pharmacy.add_pharmacy');
    }

    public function create2()
    {
        return view('backend.pharmacy2.add_pharmacy');
    }

    public function daybook(Request $request)
    {
    
    // $pharmacies = Pharmacy::all();

    $query = PharmacyPrescription::with(['user', 'pharmacy','deliveryAgent'])->where('status', '!=', 5);
    // 1 = completed

    // Filter by payment method
    if ($request->has('payment_method') && in_array($request->payment_method, ['1', '2'])) 
    {
        $query->where('payment_method', $request->payment_method);
    }


    if ($request->filled('from_date') && $request->filled('to_date')) {
        $query->whereBetween('created_at', [
            $request->from_date . ' 00:00:00',
            $request->to_date . ' 23:59:59',
        ]);
    }

    $payments = $query->latest()->paginate(10);
    return view('backend.daybook.index', compact('payments'));
    }


    
    public function export(Request $request)
    {
    return Excel::download(new DaybookExport($request->all()), 'daybook.xlsx');
    }

    public function report(Request $request)
    {    
 
    $from = $request->from_date ? $request->from_date . ' 00:00:00' : null;
    $to   = $request->to_date ? $request->to_date . ' 23:59:59' : null;

    $pharmacyPrescriptions  = collect();
    $clinicPrescriptions    = collect();

    if ($request->types == '1' || empty($request->types)) 
    {
    $clinicQuery = ClinicPrescription::with(['user', 'clinic','deliveryAgent']);

    if ($from && $to) 
    {
    $clinicQuery->whereBetween('created_at', [$from, $to]);
    }


    $clinicPrescriptions = $clinicQuery->get()->each(function ($item) {
    $item->setAttribute('type', 'clinic');
    });

    }

    if ($request->types == '2' || empty($request->types)) 
    {
        $pharmacyQuery = PharmacyPrescription::with(['user', 'pharmacy']);

        if ($from && $to) 
        {
        $pharmacyQuery->whereBetween('created_at', [$from, $to]);
        }

        $pharmacyPrescriptions = $pharmacyQuery->get()->each(function ($item) {
        $item->setAttribute('type', 'pharmacy');
    });
    }

    $allPrescriptions = $pharmacyPrescriptions->merge($clinicPrescriptions)
        ->sortByDesc('created_at')
        ->values();

    $page = LengthAwarePaginator::resolveCurrentPage();
    $perPage = 10;

    $paginated = new LengthAwarePaginator(
        $allPrescriptions->forPage($page, $perPage),
        $allPrescriptions->count(),
        $perPage,
        $page,
        ['path' => request()->url(), 'query' => request()->query()]
    );
// dd($paginated); // Dumps and stops execution

// OR

// echo '<pre>';
// print_r($paginated);
// echo '</pre>';
// exit;

    return view('backend.daybook.report', ['payments' => $paginated]);
   
    }

    public function store(Request $request)
    {
        $request->validate([
            'pharmacy_name' => 'required|string|max:255',
            'pharmacy_address' => 'required|string',
            'city' => 'required|string|max:255',
            'phone_number' => 'required|string|max:20',
            'types' => 'required|string|max:20',
            'email' => 'required|email|unique:pharmacies,email',
            'pharmacy_photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $pharmacyPhotoPath = null;
        if ($request->hasFile('pharmacy_photo')) {
            $clinicPhoto = $request->file('pharmacy_photo');
            $pharmacyPhotoPath = $clinicPhoto->store('pharmacy_photo', 'public');
        }

        Pharmacy::create([
            'pharmacy_name' => $request->pharmacy_name,
            'pharmacy_address' => $request->pharmacy_address,
            'city' => $request->city,
            'phone_number' => $request->phone_number,
             'types' => $request->types,
            'email' => $request->email,
            'pharmacy_photo' => $pharmacyPhotoPath
        ]);

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $request->pharmacy_name . ' created by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies.index')->with('success', 'Pharmacy added successfully.');
    }

     public function store2(Request $request)
    {
        $request->validate([
            'pharmacy_name' => 'required|string|max:255',
            'pharmacy_address' => 'required|string',
            'city' => 'required|string|max:255',
            'phone_number' => 'required|string|max:20',
            'types' => 'required|string|max:20',
            'email' => 'required|email|unique:pharmacies,email',
            'pharmacy_photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $pharmacyPhotoPath = null;
        if ($request->hasFile('pharmacy_photo')) {
            $clinicPhoto = $request->file('pharmacy_photo');
            $pharmacyPhotoPath = $clinicPhoto->store('pharmacy_photo', 'public');
        }

        Pharmacy::create([
            'pharmacy_name' => $request->pharmacy_name,
            'pharmacy_address' => $request->pharmacy_address,
            'city' => $request->city,
            'phone_number' => $request->phone_number,
             'types' => $request->types,
            'email' => $request->email,
            'pharmacy_photo' => $pharmacyPhotoPath
        ]);

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $request->pharmacy_name . ' created by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies2.index')->with('success', 'Pharmacy added successfully.');
    }


    public function edit($id)
    {
        $pharmacy = Pharmacy::findOrFail($id);
        return view('backend.pharmacy.edit_pharmacy', compact('pharmacy'));
    }

    public function edit2($id)
    {
        $pharmacy = Pharmacy::findOrFail($id);
        return view('backend.pharmacy2.edit_pharmacy', compact('pharmacy'));
    }



    public function update(Request $request, $id)
    {
        $pharmacy = Pharmacy::findOrFail($id);

        $request->validate([
            'pharmacy_name' => 'required|string|max:255',
            'pharmacy_address' => 'required|string',
            'city' => 'required|string|max:255',
             'types' => 'required|string|max:20',
            'phone_number' => 'required|string|max:20',
            'email' => 'required|email|unique:pharmacies,email,' . $pharmacy->id,
            'pharmacy_photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $pharmacy = Pharmacy::findOrFail($id);

        if ($request->hasFile('pharmacy_photo')) {

            if ($pharmacy->clinic_photo) {
                Storage::delete('public/' . $pharmacy->pharmacy_photo);
            }
            $pharmacyPhotoPath = $request->file('pharmacy_photo')->store('pharmacy_photo', 'public');
        } else {
            $pharmacyPhotoPath = $pharmacy->clinic_photo;
        }

        $pharmacy->update([
            'pharmacy_name' => $request->pharmacy_name,
            'pharmacy_address' => $request->pharmacy_address,
            'city' => $request->city,
            'phone_number' => $request->phone_number,
            'types' => $request->types,
            'email' => $request->email,
            'pharmacy_photo' => $pharmacyPhotoPath
        ]);

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $request->pharmacy_name . ' updated by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies.index')->with('success', 'Pharmacy updated successfully.');
    }

        public function update2(Request $request, $id)
    {
        $pharmacy = Pharmacy::findOrFail($id);

        $request->validate([
            'pharmacy_name' => 'required|string|max:255',
            'pharmacy_address' => 'required|string',
            'city' => 'required|string|max:255',
             'types' => 'required|string|max:20',
            'phone_number' => 'required|string|max:20',
            'email' => 'required|email|unique:pharmacies,email,' . $pharmacy->id,
            'pharmacy_photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $pharmacy = Pharmacy::findOrFail($id);

        if ($request->hasFile('pharmacy_photo')) {

            if ($pharmacy->clinic_photo) {
                Storage::delete('public/' . $pharmacy->pharmacy_photo);
            }
            $pharmacyPhotoPath = $request->file('pharmacy_photo')->store('pharmacy_photo', 'public');
        } else {
            $pharmacyPhotoPath = $pharmacy->clinic_photo;
        }

        $pharmacy->update([
            'pharmacy_name' => $request->pharmacy_name,
            'pharmacy_address' => $request->pharmacy_address,
            'city' => $request->city,
            'phone_number' => $request->phone_number,
            'types' => $request->types,
            'email' => $request->email,
            'pharmacy_photo' => $pharmacyPhotoPath
        ]);

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $request->pharmacy_name . ' updated by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies2.index')->with('success', 'Pharmacy updated successfully.');
    }


    public function destroy($id)
    {
        $pharmacy = Pharmacy::findOrFail($id);
        $pharmacy->delete();

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $pharmacy->pharmacy_name . ' deleted by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies.index')->with('success', 'Pharmacy deleted successfully.');
    }

      public function destroy2($id)
    {
        $pharmacy = Pharmacy::findOrFail($id);
        $pharmacy->delete();

        Log::create([
            'user_id' => auth()->id(),
            'log_type' => 'Pharmacy created',
            'message' =>  'Pharmacy: ' . $pharmacy->pharmacy_name . ' deleted by ' . Auth::user()->name,
        ]);

        return redirect()->route('pharmacies2.index')->with('success', 'Pharmacy deleted successfully.');
    }
}
