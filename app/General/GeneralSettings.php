<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class GeneralSettings extends Model 
{
    use searchable , actionable;

    protected $table = 'general_settings';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('logo', 'favicon', 'address_ar', 'address_en', 'site_ar', 'site_en', 'lat', 'lon');
    // protected $visible = array('logo', 'favicon', 'address_ar', 'address_en', 'site_ar', 'site_en', 'lat', 'lon');

}