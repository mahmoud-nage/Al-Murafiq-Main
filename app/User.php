<?php

namespace App;

use Laravel\Nova\Fields\Searchable;
use Laravel\Nova\Actions\Actionable;
use Laravel\Passport\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use searchable , actionable, SoftDeletes, HasRoles, Notifiable, HasApiTokens;
    protected $table = 'users';
    public $timestamps = true;

    protected $dates = ['deleted_at','birth_date'];
    protected $fillable = array('provider', 'provider_id', 'name', 'userable_id', 'userable_type', 'email', 'email_verified_at', 'remember_token', 'password', 'avatar', 'birth_date', 'gender', 'default_lang', 'phone', 'city_id', 'area_id', 'zone_id', 'reset_code', 'national_id', 'api_token', 'fcm_token', 'active', 'type', 'country_id');
//    protected $visible = array('provider', 'provider_id', 'name', 'userable_id', 'userable_type', 'email', 'email_verified_at', 'remember_token', 'avatar', 'birth_date', 'gender', 'default_lang', 'phone', 'city_id', 'area_id', 'zone_id', 'reset_code', 'national_id', 'api_token', 'fcm_token', 'active', 'type', 'country_id');
    protected $hidden = array('password', 'api_token');

    public function routeNotificationForFcm()
    {
        return $this->fcm_token;
    }

    public function allowedLocale() {
        return $this->allowedAllLocale() || $this->locale[app()->getLocale()];
    }

    public function allowedAllLocale() {
        return $this->isSuperAdmin(); // As an example, admin is allowed all locale
    }

    public function isSuperAdmin()
    {
        return $this->hasRole('super-admin');
    }

    public function userable()
    {
        return $this->morphTo();
    }

    public function notifications()
    {
        return $this->belongsToMany('App\General\Notification', 'notification_id');
    }

    public function adminNotifications()
    {
        return $this->hasMany('App\General\Notification');
    }

    public function addresses()
    {
        return $this->hasMany('App\General\Address');
    }

    public function tickets()
    {
        return $this->hasMany('App\General\Ticket');
    }

    public function reviews()
    {
        return $this->hasMany('App\General\Review', 'user_id', 'id')->with('company');
    }

    public function wishlists()
    {
        return $this->belongsToMany('App\Company\Company','wishlists');
    }

    public function reviewLikes()
    {
        return $this->belongsToMany('App\General\Review', 'comment_likes', 'review_id');
    }

    public function payments()
    {
        return $this->hasMany('App\General\Payment');
    }

    public function contacts()
    {
        return $this->hasMany('App\General\Contact');
    }

    public function country()
    {
        return $this->belongsTo('App\General\Country', 'country_id');
    }

    public function city()
    {
        return $this->belongsTo('App\General\City' ,'city_id');
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
