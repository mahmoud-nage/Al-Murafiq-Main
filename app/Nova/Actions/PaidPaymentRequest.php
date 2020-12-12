<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Illuminate\Support\Str;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Laravel\Nova\Fields\Image;

class PaidPaymentRequest extends Action
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
            if($fields->file){
                $filename = Str::random(50) . '.' . $fields->file->getClientOriginalExtension();
                $fields->file->move(public_path('/uploads/payments/'), $filename);
            }else{
                $model->update(['payment_status'=>1]);
            }
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
                Image::make(__('Payment Reciet'), 'file')
                ->prunable()
                ->creationRules('image', 'mimes:png,jpeg,jpg,gif')
                ->updateRules('image', 'mimes:png,jpeg,jpg,gif'),

        ];
    }
}
