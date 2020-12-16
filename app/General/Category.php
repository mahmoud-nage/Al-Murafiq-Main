<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Category extends Model
{
    use searchable , actionable;

    protected $table = 'categories';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'slug', 'active', 'in_home', 'parent_id', 'type', 'image', 'color');
    // protected $visible = array('name_ar', 'name_en', 'slug', 'active', 'in_home', 'parent_id', 'type');

    public function subcategories()
    {
        return $this->hasMany('App\General\Category','parent_id', 'id')->where('parent_id', $this->id);
    }

    public function subSubcategories()
    {
        return $this->hasMany('App\General\Category','parent_id', 'id')->where('parent_id', $this->id);
    }

    public function category()
    {
        return $this->belongsTo('App\General\Category','parent_id', 'id')->where('type', 0);
    }

    public function subCategory()
    {
        return $this->belongsTo('App\General\Category','parent_id', 'id' )->where('type', 1);
    }

    public function companies()
    {
        return $this->hasMany('App\Company\Company', 'cat_id');
    }

    public function companiesBySub()
    {
        return $this->hasMany('App\Company\Company', 'sub_cat_id');
    }

    public function files()
    {
        return $this->morphMany('App\General\File', 'fileable');
    }

}
