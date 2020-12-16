<?php

namespace App\Company;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Company extends Model
{
    use searchable, actionable;

    protected $table = 'companies';
    public $timestamps = true;

    use SoftDeletes;

    protected $casts = [
        'holiday' => 'array',
    ];

    protected $dates = ['deleted_at'];
    protected $fillable = array('name_ar', 'name_en', 'desc_ar', 'desc_en', 'service_ar',
        'service_en', 'address_ar', 'address_en', 'pdf', 'branch_num', 'active', 'is_open', 'closed_reason', 'open_from',
        'open_to', 'holiday', 'parent_id', 'phone1', 'phone2', 'tel', 'fax', 'facebook', 'instagram', 'twitter', 'snapshat',
        'whatsapp', 'googleplus', 'website', 'email', 'visit_count', 'lat', 'lon', 'rate_user_count','total_rating', 'linked_in',
        'country_id', 'city_id', 'area_id', 'zone_id', 'app', 'open_to', 'open_from', 'cat_id', 'sub_cat_id');

    // protected $visible = array('name_ar', 'name_en', 'desc_ar', 'desc_en', 'service_ar', 'service_en', 'address_ar', 'address_en', 'pdf', 'branch_num', 'active', 'is_open', 'closed_reason', 'open_from', 'open_to', 'holiday', 'parent_id', 'phone1', 'phone2', 'tel', 'fax', 'facebook', 'instagram', 'twitter', 'snapshat', 'whatsapp', 'googleplus', 'website', 'email', 'visit_count', 'lat', 'lon', 'rate_user_count', 'total_rating', 'linked_in', 'country_id' , 'city_id', 'area_id', 'zone_id', 'app');

    public function branches()
    {
        return $this->hasMany('App\Company\Company', 'parent_id', 'id');
    }

    public function company()
    {
        return $this->belongsTo('App\Company\Company', 'parent_id', 'id');
    }

    public function payments()
    {
        return $this->hasMany('App\General\Payment', 'company_id');
    }

    public function affilates()
    {
        return $this->belongsToMany('App\Affilate\Affilate', 'affilate_companies');
    }

    public function user()
    {
        return $this->morphOne('App\User', 'userable');
    }

    public function social()
    {
        return $this->morphMany('App\General\Social', 'socialable');
    }

    public function reviews()
    {
        return $this->hasMany('App\General\Review', 'company_id', 'id')->with('user');
    }

    public function wishlists()
    {
        return $this->hasMany('App\General\Wishlist', 'company_id', 'id')->with('user');
    }

//    public function Subscriptions()
//    {
//        return $this->belongsToMany('App\General\Subscription', 'company_subsriptions')->withPivot('from', 'to', 'price', 'slider_num', 'banner_num');
//    }


    public function category()
    {
        return $this->belongsTo('App\General\Category', 'cat_id');
    }

    public function subCategory()
    {
        return $this->belongsTo('App\General\Category', 'sub_cat_id');
    }

    public function ads()
    {
        return $this->hasMany('App\General\Ad', 'company_id', 'id');
    }
    public function Subscriptions()
    {
        return $this->hasMany('App\General\CampanySubsriptions');
    }

    public function file()
    {
        return $this->morphOne('App\General\File', 'fileable');
    }

    public function getName()
    {
        if (isset($this->user->name))
            return $this->user->name;
        else
            return '';
    }

    public function getMail()
    {
        if (isset($this->user->email))
            return $this->user->email;
        else
            return '';
    }

    public function getPhone()
    {
        if (isset($this->user->phone))
            return $this->user->phone;
        else
            return '';
    }

    public function getAvatar()
    {
        if (isset($this->user->avatar))
            return $this->user->avatar;
        else
            return '';
    }

    public function country()
    {
        return $this->belongsTo('App\General\Country', 'country_id');
    }

    public function city()
    {
        return $this->belongsTo('App\General\City', 'city_id');
    }

    public function area()
    {
        return $this->belongsTo('App\General\Area', 'area_id');
    }

    public function zone()
    {
        return $this->belongsTo('App\General\Zone', 'zone_id');
    }


}
