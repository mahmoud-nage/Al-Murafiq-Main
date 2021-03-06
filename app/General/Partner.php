<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Partner extends Model
{
    use searchable , actionable;
    protected $table = 'parteners';


    public $timestamps = true;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = array( 'name_ar', 'name_en', 'logo', 'active');
    // protected $visible = array( 'name_ar', 'name_en', 'logo', 'active');
}
