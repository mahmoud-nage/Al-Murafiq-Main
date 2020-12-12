<?php

namespace App\Policies;

use App\General\Subscription;
use App\User;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class SubscriptionPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Subscription';


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
    //  * @param  \App\Subscription  $subscription
    //  * @return mixed
    //  */
    // public function view(User $user, Subscription $subscription)
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
    //  * @param  \App\Subscription  $subscription
    //  * @return mixed
    //  */
    // public function update(User $user, Subscription $subscription)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Subscription  $subscription
    //  * @return mixed
    //  */
    // public function delete(User $user, Subscription $subscription)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Subscription  $subscription
    //  * @return mixed
    //  */
    // public function restore(User $user, Subscription $subscription)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Subscription  $subscription
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Subscription $subscription)
    // {
    //     //
    // }
}
