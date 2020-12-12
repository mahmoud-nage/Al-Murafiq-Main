<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Currency extends Model 
{
    use searchable , actionable;

    protected $table = 'currencies';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'symbol', 'active', 'country_code', 'country_name', 'dial_code', 'size_phone', 'exchange_rate', 'exchange_rate_usd', 'default');
    // protected $visible = array('name_ar', 'name_en', 'symbol', 'active', 'country_code', 'country_name', 'dial_code', 'size_phone', 'exchange_rate', 'exchange_rate_usd', 'default');

    public function country()
    {
        return $this->hasOne('App\General\Country');
    }

}