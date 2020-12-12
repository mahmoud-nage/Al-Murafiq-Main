<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class PaymentMethod extends Model 
{
    use searchable , actionable;

    protected $table = 'payment_methods';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'active', 'type');
    // protected $visible = array('name_ar', 'name_en', 'active', 'type');

    public function payments()
    {
        return $this->hasMany('App\General\Payment');
    }

}