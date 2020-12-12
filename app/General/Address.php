<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Address extends Model
{
    use searchable , actionable;

    protected $table = 'addresses';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'country_id', 'city_id', 'phone', 'special_mark', 'address_details', 'lat', 'lon', 'active');

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function country()
    {
        return $this->belongsTo('App\General\Country', 'country_id');
    }

    public function city()
    {
        return $this->belongsTo('App\General\City', 'city_id');
    }

}
