<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Admin extends Model
{
    use searchable , actionable;

    protected $table = 'admins';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('type');
    // protected $visible = array('type');

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
