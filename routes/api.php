<?php

use App\Http\Controllers\API\CommonController;
use App\Http\Controllers\Api\DeliveryAgentController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\PaymentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OtpController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/register', [UserController::class, 'register']);

Route::post('/login', [UserController::class, 'login']);

Route::post('/verify-otp', [UserController::class, 'verifyOtp']);

Route::post('/send-otp', [OtpController::class, 'send']);

Route::middleware('auth:api','throttle:60,1')->group(function () {
    Route::get('/pharmacies', [CommonController::class, 'pharmacyLister']);
    Route::get('/clinics', [CommonController::class, 'clinicLister']);
    Route::get('/clinics_tests/{id}', [CommonController::class, 'clinicTestLister']);
    Route::post('/pharmacy_prescription', [CommonController::class, 'pPrescription']);
    Route::post('/pharmacy_medicine', [CommonController::class, 'pMedicines']);
    Route::post('/clinic_prescription', [CommonController::class, 'cPrescription']);
    Route::put('/profile_update', [UserController::class, 'updateProfile']);
    Route::post('/log_out', [UserController::class, 'logOut']);
    Route::delete('/pharmacy_med_cancel/{id}', [CommonController::class, 'cancelPharMedicine']);
    Route::get('/delivery', [DeliveryAgentController::class, 'deliveryRequests']);
    Route::post('/delivery_completed/{id}', [DeliveryAgentController::class, 'deliveryCompleted']);
    Route::post('/payment_conformed/{user_id}/{pres_id}', [PaymentController::class, 'paymentConformed']);
    Route::get('/payment_history/{user_id}', [PaymentController::class, 'paymentHistory']);

    Route::get('/clinic_data/{id}', [CommonController::class, 'clinicData']);
    Route::post('/clinic_data_completed/{id}', [CommonController::class, 'clinicDataCompleted']);
    Route::post('/clinic_data_completed_new/{id}', [CommonController::class, 'clinicDataCompletednew']);
    Route::get('/clinic_order_history/{id}', [CommonController::class, 'getPrescriptions']);
    Route::get('/pharmacy_order_history/{id}', [CommonController::class, 'getPharmacyhistory']);

    Route::put('/clinic_order_update/{userId}/{prescriptionId}', [CommonController::class, 'updatePrescription']);

  


});
