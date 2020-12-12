<?php

namespace App\Customer;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Customer extends Model
{
    use searchable , actionable;

    protected $table = 'customers';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];

    public function user()
    {
        return $this->morphOne('App\User', 'userable');
    }

    public function getName()
    {
        if(isset($this->user->name))
            return $this->user->name;
        else
            return '';
    }
    
    public function getMail()
    {
        if(isset($this->user->email ))
            return $this->user->email ;
        else
            return '';
    }

    public function getPhone()
    {
        if(isset($this->user->phone))
            return $this->user->phone;
        else
            return '';
    }

    public function getAvatar()
    {
        if(isset($this->user->avatar))
            return $this->user->avatar;
        else
            return '';
    }


}
