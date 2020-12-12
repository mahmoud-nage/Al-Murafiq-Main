<?php

namespace App\Observers;

use App\General\Payment;
use App\General\Subscription;
use App\General\PaymentMethod;
use App\General\CampanySubsriptions;

class CampanySubsriptionsObserver
{
    /**
     * Handle the campany subsriptions "created" event.
     *
     * @param  \App\CampanySubsriptions  $campanySubsriptions
     * @return void
     */
    public function created(CampanySubsriptions $campanySubsriptions)
    {
        $subs = $campanySubsriptions->subscription;
        $user = $campanySubsriptions->company->user;

        $payment = Payment::create([
            'user_id' => $user->id,
            'payment_method_id' => PaymentMethod::where('type', "Cash")->first()->id,
            'company_subsription_id' => $campanySubsriptions->id,
            'amount' => $subs->price,
            'payment_status' => 1,
        ]);

        $campanySubsriptions->to = date('Y-m-d', strtotime($campanySubsriptions->from. ' + '.$subs->days.' day'));
        $campanySubsriptions->price = $subs->price;
        $campanySubsriptions->slider_num = $subs->slider_num;
        $campanySubsriptions->banner_num = $subs->banner_num;
        $campanySubsriptions->payment_id = $payment->id;
        $campanySubsriptions->save();
    }

    /**
     * Handle the campany subsriptions "updated" event.
     *
     * @param  \App\CampanySubsriptions  $campanySubsriptions
     * @return void
     */
    public function updated(CampanySubsriptions $campanySubsriptions)
    {
        //
    }

    /**
     * Handle the campany subsriptions "deleted" event.
     *
     * @param  \App\CampanySubsriptions  $campanySubsriptions
     * @return void
     */
    public function deleted(CampanySubsriptions $campanySubsriptions)
    {
        //
    }

    /**
     * Handle the campany subsriptions "restored" event.
     *
     * @param  \App\CampanySubsriptions  $campanySubsriptions
     * @return void
     */
    public function restored(CampanySubsriptions $campanySubsriptions)
    {
        //
    }

    /**
     * Handle the campany subsriptions "force deleted" event.
     *
     * @param  \App\CampanySubsriptions  $campanySubsriptions
     * @return void
     */
    public function forceDeleted(CampanySubsriptions $campanySubsriptions)
    {
        //
    }
}
