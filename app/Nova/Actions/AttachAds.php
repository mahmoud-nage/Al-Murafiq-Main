<?php

namespace App\Nova\Actions;

use App\General\Ad;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\General\Subscription;
use Illuminate\Bus\Queueable;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\Boolean;
use Illuminate\Support\Collection;
use App\General\CampanySubsriptions;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Queue\InteractsWithQueue;

class AttachAds extends Action
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
            $count = $model->payments->where('payment_status', 0)->count();
            if($count){
                return Action::danger('Can`t Create Ad, Before Paid Your Payment');
            }

            $subs = $model->subscriptions()->latest()->first();
            // $slider_count = $subs
            // $ban_count = 
            $subrel = Ad::create([
                'subscription_id' => $subs->id,
                'company_subsription_id' => CampanySubsriptions::where('company_id', $model->id)->latest()->first()->id,
                'company_id' => $model->id,
                'ad_location' => $fields->ad_location,
                'type' => $fields->type,
                'top' => $fields->top,
                'active' => $fields->active,
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
            // Select::make('Subscription', 'subscription_id')->options(function () {
            //     // $rel = \App\General\CampanySubsriptions::where('company_id', $this->id)->latest()->first()->subscription_id;
            //     $Subscriptions = \App\General\Subscription::all();

            //     $data = [];
            //     foreach ($Subscriptions as $Subscription) {
            //         $data[$Subscription->id] = $Subscription['name_' . app()->getLocale()] . '  -  ' . $Subscription->price;
            //     }
            //     return $data;

            // })->searchable()->rules('required'),

            Select::make('Ad Location', 'ad_location')->options([
                1 => 'Home',
                2 => 'Category',
            ])->searchable()->rules('required'),

            Select::make('Type', 'type')->options([
                1 => 'Banner',
                2 => 'Slider',
            ])->searchable()->rules('required'),

            // Text::make('URL', 'url')
            //     ->rules('max:190', 'url')
            //     ->sortable(),

            Boolean::make('Special', 'top')->trueValue(1)->falseValue(0)->sortable()->default(0),

            Boolean::make('active')->trueValue(1)->falseValue(0)->sortable()->default(0),

            Image::make('Image', 'image')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move(public_path('/uploads/ads/'), $filename);
                    return [
                        'image' => '/uploads/ads/' . $filename,
                    ];
                })
                ->prunable()
                ->rules('image', 'mimes:png,jpeg,jpg,gif'),

        ];
    }
}
