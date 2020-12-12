<?php

namespace App\Policies;

use App\User;
use App\General\Wishlist;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class WishlistPolicy
{
    use HandlesAuthorization;
    public static $key = 'Wishlist';


    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->can('view Wishlist');
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\Wishlist  $wishlist
     * @return mixed
     */
    public function view(User $user, Wishlist $wishlist)
    {
        return $user->can('view own Wishlist');
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
     * @param  \App\Wishlist  $wishlist
     * @return mixed
     */
    public function update(User $user, Wishlist $wishlist)
    {
        return false;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Wishlist  $wishlist
     * @return mixed
     */
    public function delete(User $user, Wishlist $wishlist)
    {
        return $user->can('manage own Wishlist');
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Wishlist  $wishlist
     * @return mixed
     */
    public function restore(User $user, Wishlist $wishlist)
    {
        return $user->can('restore Wishlist');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Wishlist  $wishlist
     * @return mixed
     */
    public function forceDelete(User $user, Wishlist $wishlist)
    {
        return $user->can('forceDelete Wishlist');
    }
}
