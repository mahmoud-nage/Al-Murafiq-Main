<?php

namespace App\Observers;

use App\User;
use App\General\Token;
use App\General\Notification;

class NotificationObserver
{
    /**
     * Handle the notification "created" event.
     *
     * @param  \App\General\Notification  $notification
     * @return void
     */
    public function created(Notification $notification)
    {
//        $this->notify_user($notification);
    }

    public function notify_user($notification)
    {
        $nor_registered = Token::where('fcm_token', '!=', null)->pluck('fcm_token')->toArray();
        if ($notification->type == 'General') {
            $tokens = User::where('fcm_token', '!=', null)->where('type', '!=', 'Admin')->Where('type', '!=', 'Staff')->where('fcm_token', '!=', null)
                ->pluck('fcm_token')->toArray();
        }else if($notification->type){
            $tokens = User::where('fcm_token', '!=', null)->where('type', $notification->type)->where('fcm_token', '!=', null)->pluck('fcm_token')->toArray();
        }

        if(isset($token) && !is_null($token)){
            $all_tokens = array_merge($tokens, $nor_registered);
        }


        $users = User::whereIn('fcm_token', array_unique($tokens))->get();

        $notification->users()->attach($users);

        if (isset($token) && !is_null($token)) {

            $url = "https://fcm.googleapis.com/fcm/send";
            $serverKey = 'AAAAmbDMc34:APA91bHwSrBaHfY_KPvQKWtbmFu7v7Et0HSxKRLpklZOVvLKrRhgFBTCFH1QUqhdebrbY5SaihPrtACLOZdZZETzgBLqHtBHpwCxvfEJ7uWo9NIgDE55z4lIMQVCTah8iUowTzTqXRSv';
            $title = $notification->title_en?$notification->title_en:" ";
            $body = $notification->body_en?$notification->body_en:" ";

            $notify = array('title' =>$title , 'text' => $body, 'sound' => 'default', 'badge' => '1');
            $arrayToSend = array('to' => $all_tokens, 'notification' => $notify,'priority'=>'high');
            $json = json_encode($arrayToSend);
            $headers = array();
            $headers[] = 'Content-Type: application/json';
            $headers[] = 'Authorization: key='. $serverKey;
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST,"POST");
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            curl_setopt($ch, CURLOPT_HTTPHEADER,$headers);
            //Send the request
            $response = curl_exec($ch);
            //Close request
            if ($response === FALSE) {
            die('FCM Send Error: ' . curl_error($ch));
            }
            curl_close($ch);
        }

        return false;
    }

    /**
     * Handle the notification "updated" event.
     *
     * @param  \App\Notification  $notification
     * @return void
     */
    public function updated(Notification $notification)
    {
        //
    }

    /**
     * Handle the notification "deleted" event.
     *
     * @param  \App\Notification  $notification
     * @return void
     */
    public function deleted(Notification $notification)
    {
        //
    }

    /**
     * Handle the notification "restored" event.
     *
     * @param  \App\Notification  $notification
     * @return void
     */
    public function restored(Notification $notification)
    {
        //
    }

    /**
     * Handle the notification "force deleted" event.
     *
     * @param  \App\Notification  $notification
     * @return void
     */
    public function forceDeleted(Notification $notification)
    {
        //
    }
}
