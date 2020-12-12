<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\General\BusinessSettings;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class VapulusController extends Controller
{

public function checkSession(Request $request) {
        $postData = array(
            'sessionId' =>  $request->session_id
        );

        $secureHash= '40d771c632653633663663302d333135';
        $postData['hashSecret'] = $this->generateHash($secureHash,$postData);

        $postData['appId']='c37decb5-10e4-4adf-acc9-2415364f298f';
        $postData['password']='Alm@2030';

        $url ='https://api.vapulus.com:1338/app/session/retrieve';

        $output = $this->HTTPPost($url,$postData);
        dd($output,$postData,$url);
        print_r($output);
}

public function paySession(Request $request) {
    $postData = array(
        'sessionId' =>  $request->session_id,
        'mobileNumber' => '01123003488',
        'email' => 'mahmoudn509@gmail.com',
        'amount' => '1000.00',
        'firstName' => 'Mahmoud',
        'lastName' => 'Nagy',
        'onAccept' => 'https://almurafiq.dev-krito.com/api/vapulus/success',
        'onFail' => 'https://almurafiq.dev-krito.com/api/vapulus/fail'
    );

    $secureHash= '40d771c632653633663663302d333135';
    $postData['hashSecret'] = $this->generateHash($secureHash,$postData);

    $postData['appId']='c37decb5-10e4-4adf-acc9-2415364f298f';
    $postData['password']='Alm@2030';

    $url ='https://api.vapulus.com:1338/app/session/pay';

    $output = $this->HTTPPost($url,$postData);

    dd($output,$postData,$url);
    print_r($output);
}

public function Fail(Request $request) {
    dd('fail');
}
public function success(Request $request) {
    dd('success');
}


  public function generateHash($hashSecret,$postData) {
    ksort($postData);
        $message="";
        $appendAmp=0;
    foreach($postData as $key => $value) {
            if (strlen($value) > 0) {
                if ($appendAmp == 0) {
                    $message .= $key . '=' . $value;
                    $appendAmp = 1;
                } else {
                    $message .= '&' . $key . "=" . $value;
                }
            }
        }

    $secret = pack('H*', $hashSecret);
    return hash_hmac('sha256', $message, $secret);
}

public function HTTPPost($url, array $params) {
        $query = http_build_query($params);
        $ch    = curl_init();
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
        $response = curl_exec($ch);
        $curl_errno= curl_error($ch);
        dd($response,$curl_errno);
        curl_close($ch);
        return $response;
    }


}
