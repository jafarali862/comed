<?php
namespace App\Services;
use Illuminate\Support\Facades\Http;

class SmsService
{
    protected $username = 'ascbcomed';
    protected $password = 'Comed@123';
    protected $sendername = 'ARDSCB';
    protected $routetype = 1;
    protected $tid = '1207162304804132282';
    protected $baseUrl = 'http://smsgt.niveosys.com/SMS_API/sendsms.php';

    public function sendOtp($mobile, $otp, $service = 'CoMed', $refId = '4321', $validMinutes = 5)
    {
        $message = "{$otp} is the OTP for your {$service} with Ref ID:{$refId}. Only valid for {$validMinutes} minutes. Do not share the OTP with anyone . Areacode SCB";

        $response = Http::get($this->baseUrl, [
            'username'   => $this->username,
            'password'   => $this->password,
            'mobile'     => $mobile,
            'message'    => $message,
            'sendername' => $this->sendername,
            'routetype'  => $this->routetype,
            'tid'        => $this->tid,
        ]);

        return $response->body();
    }
}
