<?php

namespace App\Observers;

use App\Company\Company;
use Illuminate\Support\Collection;
use App\Nova\Actions\AttachSubscription;
use Laravel\Nova\Actions\DispatchAction;
use Laravel\Nova\Http\Requests\ActionRequest;
class CompanyObserve
{
    /**
     * Handle the company "created" event.
     *
     * @param  \App\Company\Company  $company
     * @return void
     */
    public function created(Company $company)
    {
        if($company->parent_id != 0){
            Company::where('id', $company->parent_id)->increment('branch_num');
        }
        // $company->categories()->attach([
        //     'company_id' => $company->id,
        // ]);


    }

    /**
     * Handle the company "updated" event.
     *
     * @param  \App\Company  $company
     * @return void
     */
    public function updated(Company $company)
    {
        //
    }

    /**
     * Handle the company "deleted" event.
     *
     * @param  \App\Company  $company
     * @return void
     */
    public function deleted(Company $company)
    {
//        $company->branches()->delete();
        Company::where('parent_id', $company->id)->delete();
    }

    /**
     * Handle the company "restored" event.
     *
     * @param  \App\Company  $company
     * @return void
     */
    public function restored(Company $company)
    {
//        $company->branches()->restore();
        Company::where('parent_id', $company->id)->restore();


    }

    /**
     * Handle the company "force deleted" event.
     *
     * @param  \App\Company  $company
     * @return void
     */
    public function forceDeleted(Company $company)
    {
//        $company->branches()->forceDelete();
        Company::where('parent_id', $company->id)->forceDelete();


    }
}
