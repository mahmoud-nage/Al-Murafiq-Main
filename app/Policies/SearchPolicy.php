<?php

namespace App\Policies;

use App\General\Search;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SearchPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->can('view Search');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\Search  $search
     * @return mixed
     */
    public function view(User $user, Search $search)
    {
        return $user->can('view own Search');
        //
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\Search  $search
     * @return mixed
     */
    public function update(User $user, Search $search)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Search  $search
     * @return mixed
     */
    public function delete(User $user, Search $search)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Search  $search
     * @return mixed
     */
    public function restore(User $user, Search $search)
    {
        return false;
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Search  $search
     * @return mixed
     */
    public function forceDelete(User $user, Search $search)
    {
        return false;
        //
    }
}
