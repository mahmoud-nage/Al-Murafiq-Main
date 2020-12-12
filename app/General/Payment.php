<?php

namespace App\General;

use App\Company\Company;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Payment extends Model
{
    use searchable , actionable;

    protected $table = 'payments';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'company_id', 'payment_method_id', 'amount', 'payment_details', 'payment_status', 'file');
    // protected $visible = array('user_id', 'payment_method_id', 'company_subsription_id', 'amount', 'payment_details', 'payment_status');

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function paymentMethod()
    {
        return $this->belongsTo('App\General\PaymentMethod', 'payment_method_id');
    }

    public function file()
    {
        return $this->morphOne('App\General\File', 'fileable');
    }

}
