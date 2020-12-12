<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Laravel\Nova\Actions\Action;
use Illuminate\Support\Collection;
use Laravel\Nova\Fields\ActionFields;
use App\Notifications\SendNotification;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class Active extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        foreach ($models as $model){
            // if($model->user()->type == "Company"){

            //     $url = "https://fcm.googleapis.com/fcm/send";
            //     $token = "your device token";
            //     $serverKey = 'your server token of FCM project';
            //     $title = "Notification title";
            //     $body = "Hello I am from Your php server";
            //     $notification = array('title' =>$title , 'text' => $body, 'sound' => 'default', 'badge' => '1');
            //     $arrayToSend = array('to' => $token, 'notification' => $notification,'priority'=>'high');
            //     $json = json_encode($arrayToSend);
            //     $headers = array();
            //     $headers[] = 'Content-Type: application/json';
            //     $headers[] = 'Authorization: key='. $serverKey;
            //     $ch = curl_init();
            //     curl_setopt($ch, CURLOPT_URL, $url);
            //     curl_setopt($ch, CURLOPT_CUSTOMREQUEST,"POST");
            //     curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            //     curl_setopt($ch, CURLOPT_HTTPHEADER,$headers);
            //     //Send the request
            //     $response = curl_exec($ch);
            //     //Close request
            //     if ($response === FALSE) {
            //     die('FCM Send Error: ' . curl_error($ch));
            //     }
            //     curl_close($ch);
                
            // }

            $model->update(['active' => 1]);
        }
    }

    /**
     * Get the fields available on the action.
     *
     * @return array
     */
    public function fields()
    {
        return [];
    }

    public function actionClass()
    {
        return 'bg-success text-white';
    }
}
