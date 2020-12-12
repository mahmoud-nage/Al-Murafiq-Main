<?php

namespace App\Policies;

use App\User;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class PolicyPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Policy';


    // /**
    //  * Determine whether the user can view any models.
    //  *
    //  * @param  \App\User  $user
    //  * @return mixed
    //  */
    // public function viewAny(User $user)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can view the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Policy  $policy
    //  * @return mixed
    //  */
    // public function view(User $user, Policy $policy)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can create models.
    //  *
    //  * @param  \App\User  $user
    //  * @return mixed
    //  */
    // public function create(User $user)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can update the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Policy  $policy
    //  * @return mixed
    //  */
    // public function update(User $user, Policy $policy)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Policy  $policy
    //  * @return mixed
    //  */
    // public function delete(User $user, Policy $policy)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Policy  $policy
    //  * @return mixed
    //  */
    // public function restore(User $user, Policy $policy)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Policy  $policy
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Policy $policy)
    // {
    //     //
    // }
}
