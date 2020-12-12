<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class BusinessSettings extends Model 
{
    use searchable , actionable;

    protected $table = 'business_settings';
    public $timestamps = true;
    protected $fillable = array('type', 'value');
    // protected $visible = array('type', 'value');

}