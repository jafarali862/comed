<?php

namespace App\Http\Controllers\API;

use Log;
use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Http;

class UserController extends Controller
{
    public function register(Request $request)
    {

        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email',
                'password' => 'required|string|min:8',
                'date_of_birth' => 'required|date',
                'gender' => 'required|string|max:10',
                'phone_number' => 'required|string|max:15',
                'address' => 'required|string',
                'user_type' => 'required|string',
                'emergency_contact_name' => 'nullable|string|max:255',
                'emergency_contact_phone' => 'nullable|string|max:15',
                'insurance_provider' => 'nullable|string|max:255',
                'insurance_policy_number' => 'nullable|string|max:255',
                'primary_physician' => 'nullable|string|max:255',
                'medical_history' => 'nullable|string',
                'medications' => 'nullable|string',
                'allergies' => 'nullable|string',
                'blood_type' => 'nullable|string|max:10',
                'status' => 'nullable|integer',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'errors' => $validator->errors()
                ], 400);
            }

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'date_of_birth' => $request->date_of_birth,
                'gender' => $request->gender,
                'phone_number' => $request->phone_number,
                'address' => $request->address,
                'user_type' => $request->user_type,
                'emergency_contact_name' => $request->emergency_contact_name,
                'emergency_contact_phone' => $request->emergency_contact_phone,
                'insurance_provider' => $request->insurance_provider,
                'insurance_policy_number' => $request->insurance_policy_number,
                'primary_physician' => $request->primary_physician,
                'medical_history' => $request->medical_history,
                'medications' => $request->medications,
                'allergies' => $request->allergies,
                'blood_type' => $request->blood_type,
                'status' =>  1,
            ]);

            return response()->json([
                'message' => 'User successfully registered!',
                'user' => $user
            ], 201);
        } 
        
        catch (Exception $e)
        {
            \Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function login(Request $request)
    {
        try {
            $validator = Validator::make(
                $request->all(),
                [
                    'email' => 'required|email',
                    'password' => 'required'
                ]
            );

            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 422);
            }

            if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {

                $user = User::find(Auth::user()->id);


                $token = $user->createToken('appToken')->accessToken;

                return response()->json([
                    'success' => true,
                    'token' => $token,
                    'user' => $user,
                    'message' => 'User successfully Log in!',
                ], 200);
            } else {

                return response()->json([
                    'success' => false,
                    'message' => 'Failed to authenticate.',
                ], 401);
            }
        } catch (Exception $e) {
            \Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }


     public function login2(Request $request)
    {
    $validator = Validator::make($request->all(), [
        'email' => 'required|email',
        'password' => 'required',
    ]);

    if ($validator->fails()) {
        return response()->json(['error' => $validator->errors()], 422);
    }

    // Validate credentials
    if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
        return response()->json(['success' => false, 'message' => 'Invalid credentials'], 401);
    }

    $user = Auth::user();

    // Generate OTP and ref ID
    $otp = rand(100000, 999999);
    $refId = rand(1000, 9999);

    // Save OTP temporarily in DB (optional: use a separate table)
    $user->otp              = $otp;
    $user->otp_ref_id       = $refId;
    $user->otp_expires_at   = now()->addMinutes(5);
    $user->save();

    // Send OTP using your SMS API


    // $message = "$otp is the OTP for your CoMed with Ref ID:$refId. Only valid for 5 minutes. Do not share the OTP with anyone. Areacode SCB";

    // $response = Http::get('http://smsgt.niveosys.com/SMS_API/sendsms.php', [
    //     'username'    => 'ascbcomed',
    //     'password'    => 'Comed@123',
    //     'mobile'      => $user->mobile,
    //     'message'     => $message,
    //     'sendername'  => 'ARDSCB',
    //     'routetype'   => 1,
    //     'tid'         => '1207162304804132282',
    // ]);

    $templateMessage = "Your login OTP for {#var#} is {#var#}. Please enter this code to continue. Do not share this OTP with anyone. Areacode SCB";

    $response = Http::get('http://smsgt.niveosys.com/SMS_API/sendsms.php', [
    'username'    => 'ascbcomed',
    'password'    => 'Comed@123',
    'mobile'      => $user->mobile, // ✅ dynamic user mobile
    'message'     => $templateMessage,
    'sendername'  => 'ARDSCB',
    'routetype'   => 1,
    'tid'         => '1207175437936872721', // ✅ Template ID must match approved template
    'var1'        => 'CoMed',               // first {#var#}
    'var2'        => $otp,                  // second {#var#}
    ]);


    if (str_contains($response->body(), 'Sent Successfully')) {
        return response()->json([
            'success' => true,
            'message' => 'OTP sent successfully. Please verify to continue.',
        ]);
    }

    return response()->json([
        'success' => false,
        'message' => 'Failed to send OTP.',
        'api_response' => $response->body(),
    ], 500);
    }



    public function verifyOtp(Request $request)
    {
    $validator = Validator::make($request->all(), [
    'email' => 'required|email',
    'otp'   => 'required|digits:6',
    ]);

    if ($validator->fails()) {
    return response()->json(['error' => $validator->errors()], 422);
    }

    $user = User::where('email', $request->email)->first();

    if (!$user) {
    return response()->json(['success' => false, 'message' => 'User not found.'], 404);
    }

    if ($user->otp != $request->otp) {
    return response()->json(['success' => false, 'message' => 'Invalid OTP.'], 401);
    }

    if (now()->gt($user->otp_expires_at)) {
    return response()->json(['success' => false, 'message' => 'OTP expired.'], 403);
    }

    // OTP is valid — clear it
    $user->otp = null;
    $user->otp_ref_id = null;
    $user->otp_expires_at = null;
    $user->save();

    // Generate token
    $token = $user->createToken('appToken')->accessToken;

    return response()->json([
    'success' => true,
    'message' => 'Login successful.',
    'token' => $token,
    'user' => $user
    ]);
    }

    public function updateProfile(Request $request)
    {
        try {

            $userId = auth()->user()->id;

            if (!$userId) {
                return response()->json(['message' => 'User not found.'], 404);
            }

            $validator = Validator::make($request->all(), [
                'name' => 'nullable|string|max:255',
                'email' => 'nullable|string|email',
                'password' => 'nullable|string|min:8',
                'date_of_birth' => 'nullable|date',
                'gender' => 'nullable|string|max:10',
                'phone_number' => 'nullable|string|max:15',
                'address' => 'nullable|string',
                'emergency_contact_name' => 'nullable|string|max:255',
                'emergency_contact_phone' => 'nullable|string|max:15',
                'insurance_provider' => 'nullable|string|max:255',
                'insurance_policy_number' => 'nullable|string|max:255',
                'primary_physician' => 'nullable|string|max:255',
                'medical_history' => 'nullable|string',
                'medications' => 'nullable|string',
                'allergies' => 'nullable|string',
                'blood_type' => 'nullable|string|max:10',
                'role'=>'nullable|string|'

            ]);

            if ($validator->fails()) {
                return response()->json([
                    'errors' => $validator->errors()
                ], 400);
            }

            $user = User::find($userId);
            $user->update([
                'name' => $request->name ?? $user->name,
                'email' => $request->email ?? $user->email,
                'password' => $request->password ? Hash::make($request->password) : $user->password,
                'date_of_birth' => $request->date_of_birth ?? $user->date_of_birth,
                'gender' => $request->gender ?? $user->gender,
                'phone_number' => $request->phone_number ?? $user->phone_number,
                'address' => $request->address ?? $user->address,
                'emergency_contact_name' => $request->emergency_contact_name ?? $user->emergency_contact_name,
                'emergency_contact_phone' => $request->emergency_contact_phone ?? $user->emergency_contact_phone,
                'insurance_provider' => $request->insurance_provider ?? $user->insurance_provider,
                'insurance_policy_number' => $request->insurance_policy_number ?? $user->insurance_policy_number,
                'primary_physician' => $request->primary_physician ?? $user->primary_physician,
                'medical_history' => $request->medical_history ?? $user->medical_history,
                'medications' => $request->medications ?? $user->medications,
                'allergies' => $request->allergies ?? $user->allergies,
                'blood_type' => $request->blood_type ?? $user->blood_type,
                // 'role'=>$request->role
                
            ]);

            return response()->json([
                'message' => 'Profile updated successfully!',
                'user' => $user
            ], 200);
        } catch (Exception $e) {
            \Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function logOut()
    {
        try {
            $id = Auth::user()->id;
            $user=User::findOrFail($id);
            $user->tokens()->delete();

            return response()->json([
                'message' => 'User Logout Successfully!',
            ], 200);
        } catch (Exception $e) {
            \Log::error($e);
            return response()->json([
                'message' => 'Something went wrong, please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
