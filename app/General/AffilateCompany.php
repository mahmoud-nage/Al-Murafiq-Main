<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class AffilateCompany extends Model 
{
    use actionable;

    protected $table = 'affilate_companies';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('company_id', 'affilate_id');
    // protected $visible = array('company_id', 'affilate_id');

}