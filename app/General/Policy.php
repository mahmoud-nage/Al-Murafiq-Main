<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Policy extends Model
{
    use searchable , actionable;

    protected $table = 'policies';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'desc_ar', 'desc_en', 'type', 'active');
    // protected $visible = array('name_ar', 'name_en', 'desc_ar', 'desc_en', 'type', 'active');

    public function file()
    {
        return $this->morphOne('App\General\File', 'fileable');
    }

}
