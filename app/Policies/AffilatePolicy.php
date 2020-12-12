<?php

namespace App\Policies;

use App\User;
use App\Affilate\Affilate;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class AffilatePolicy
{
    use HandlesAuthorization;
    public static $key = 'Affilate';

    public static function attachAnyCompany(User $user, Affilate $affilate)
    {
        return false;
    }

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->can('view Affilate');
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\Affilate  $affilate
     * @return mixed
     */
    public function view(User $user, Affilate $affilate)
    {
        return $user->can('view own Affilate');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->can('manage own Affilate');
        //
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\Affilate  $affilate
     * @return mixed
     */
    public function update(User $user, Affilate $affilate)
    {
        return $user->can('manage own Affilate');
        //
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Affilate  $affilate
     * @return mixed
     */
    public function delete(User $user, Affilate $affilate)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Affilate  $affilate
     * @return mixed
     */
    public function restore(User $user, Affilate $affilate)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Affilate  $affilate
     * @return mixed
     */
    public function forceDelete(User $user, Affilate $affilate)
    {
        return false;
    }
}
