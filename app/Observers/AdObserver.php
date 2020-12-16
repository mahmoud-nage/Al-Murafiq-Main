<?php

namespace App\Observers;

use App\General\Ad;
use App\Nova\CompanySubsription;

class AdObserver
{
    /**
     * Handle the ad "created" event.
     *
     * @param  \App\Ad  $ad
     * @return void
     */
    public function created(Ad $ad)
    {
        $ad->update([
            'subscription_id' => $ad->companySubsriptions->subscription_id,
            'country_id' => $ad->company->country_id
        ]);
    }

    /**
     * Handle the ad "updated" event.
     *
     * @param  \App\Ad  $ad
     * @return void
     */
    public function updated(Ad $ad)
    {
        //
    }

    /**
     * Handle the ad "deleted" event.
     *
     * @param  \App\Ad  $ad
     * @return void
     */
    public function deleted(Ad $ad)
    {
        //
    }

    /**
     * Handle the ad "restored" event.
     *
     * @param  \App\Ad  $ad
     * @return void
     */
    public function restored(Ad $ad)
    {
        //
    }

    /**
     * Handle the ad "force deleted" event.
     *
     * @param  \App\Ad  $ad
     * @return void
     */
    public function forceDeleted(Ad $ad)
    {
        //
    }
}
