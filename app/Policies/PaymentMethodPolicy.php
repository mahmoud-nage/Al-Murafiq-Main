<?php

namespace App\Policies;

use App\General\PaymentMethod;
use App\User;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class PaymentMethodPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'PaymentMethod';


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
    //  * @param  \App\PaymentMethod  $paymentMethod
    //  * @return mixed
    //  */
    // public function view(User $user, PaymentMethod $paymentMethod)
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
    //  * @param  \App\PaymentMethod  $paymentMethod
    //  * @return mixed
    //  */
    // public function update(User $user, PaymentMethod $paymentMethod)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\PaymentMethod  $paymentMethod
    //  * @return mixed
    //  */
    // public function delete(User $user, PaymentMethod $paymentMethod)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\PaymentMethod  $paymentMethod
    //  * @return mixed
    //  */
    // public function restore(User $user, PaymentMethod $paymentMethod)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\PaymentMethod  $paymentMethod
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, PaymentMethod $paymentMethod)
    // {
    //     //
    // }
}
