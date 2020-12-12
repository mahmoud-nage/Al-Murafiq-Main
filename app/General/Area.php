<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Area extends Model
{
    use searchable , actionable;

    protected $table = 'areas';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'city_id', 'active');
    // protected $visible = array('name_ar', 'name_en', 'city_id', 'active');

    public function city()
    {
        return $this->belongsTo('App\General\City', 'city_id');
    }

    public function zones()
    {
        return $this->hasMany('App\General\Zone');
    }

}
