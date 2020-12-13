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
        $subrel = $campanySubsriptions->update([
            'to' => date('Y-m-d', strtotime($campanySubsriptions->from. ' + '.$subs->days.' day')),
            'price' => $subs->price,
            'slider_num' => $subs->slider_num,
            'banner_num' => $subs->banner_num,
        ]);
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
