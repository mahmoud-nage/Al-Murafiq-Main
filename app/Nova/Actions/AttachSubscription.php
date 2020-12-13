<?php

namespace App\Nova\Actions;

use App\General\Payment;
use App\General\Subscription;
use Illuminate\Bus\Queueable;
use Laravel\Nova\Actions\Action;
use Illuminate\Support\Collection;
use App\General\CampanySubsriptions;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Queue\InteractsWithQueue;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Textarea;

class AttachSubscription extends Action
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
        foreach($models as $model){
            $subs = Subscription::find($fields->Subscription);
            $user = $model->user;

            $subrel = CampanySubsriptions::create([
                'subscription_id' => $subs->id,
                'company_id' => $model->id,
                'from' => $fields->from,
                'to' => date('Y-m-d', strtotime($fields->from. ' + '.$subs->days.' day')),
                'price' => $subs->price,
                'slider_num' => $subs->slider_num,
                'banner_num' => $subs->banner_num,
            ]);
//
            $payment = Payment::create([
                'user_id' => $user->id,
                'company_id' => $model->id,
                'payment_method_id' => $fields->paymentMethod,
                'payment_status' => $fields->payment_status,
                'payment_details' => $fields->payment_details,
                'file' => $fields->file,
                'amount' => $subs->price,
            ]);

            $subrel->update([
                'payment_id' => $payment->id
            ]);
        }
    }

    /**
     * Get the fields available on the action.
     *
     * @return array
     */
    public function fields()
    {
        return [
             Select::make(__('Subscription'), 'Subscription')->options(function () {
                 return \App\General\Subscription::where('top', 0)->pluck('name_'.app()->getLocale(), 'id')->toArray();
             })->searchable()->rules('required'),

             Date::make(__('from'), 'from')->rules('required','after_or_equal:today'),

             Select::make(__('paymentMethod'), 'paymentMethod')->options(function () {
                 return \App\General\PaymentMethod::where('type', 'Cash')->pluck('name_'.app()->getLocale(), 'id');
             })->searchable()->rules('required'),

             Textarea::make(__('payment_details'),'payment_details'),
             Boolean::make(__('Payment Status'), 'payment_status')->trueValue(1)->falseValue(0)->sortable()->default(0),
        ];
    }
}
