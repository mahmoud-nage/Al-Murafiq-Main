<?php

namespace App\Policies;

use App\General\Country;
use App\User;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class CountryPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Country';


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
    //  * @param  \App\Country  $country
    //  * @return mixed
    //  */
    // public function view(User $user, Country $country)
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
    //  * @param  \App\Country  $country
    //  * @return mixed
    //  */
    // public function update(User $user, Country $country)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Country  $country
    //  * @return mixed
    //  */
    // public function delete(User $user, Country $country)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Country  $country
    //  * @return mixed
    //  */
    // public function restore(User $user, Country $country)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Country  $country
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Country $country)
    // {
    //     //
    // }
}
