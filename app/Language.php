<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Language extends Model
{
    use searchable , actionable;

    protected $table = 'languages';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'active', 'default');
    // protected $visible = array('name_ar', 'name_en', 'desc_ar', 'desc_en', 'active', 'in_home');
}
