<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class CompayCategory extends Model 
{
    use actionable;

    protected $table = 'compay_categories';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('company_id', 'category_id');

    public function company()
    {
        return $this->belongsTo('App\Company\Company');
    }
    public function category()
    {
        return $this->belongsTo('App\General\Category')->where('type', 2);
    }
    // protected $visible = array('company_id', 'category_id');

}