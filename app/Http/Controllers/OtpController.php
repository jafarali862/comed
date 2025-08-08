<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\SmsService;

class OtpController extends Controller
{
    protected $smsService;

    public function __construct(SmsService $smsService)
    {
        $this->smsService = $smsService;
    }

    public function send(Request $request)
    {
        $request->validate([
            'mobile' => 'required|digits:10',
        ]);

        $otp = rand(100000, 999999);
        $refId = rand(1000, 9999);

        $response = $this->smsService->sendOtp(
            $request->mobile,
            $otp,
            'CoMed',
            $refId,
            5
        );

        return response()->json([
            'status' => 'sent',
            'otp' => $otp,
            'response' => $response
        ]);
    }
}
