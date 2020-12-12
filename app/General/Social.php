<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Social extends Model
{
    use searchable , actionable;

    protected $table = 'socials';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('link', 'active', 'icon_type', 'socialable_id', 'socialable_type');
    // protected $visible = array('name', 'link', 'active', 'icon', 'icon_type');

    public function socialable()
    {
        return $this->morphTo();
    }

}
