<?php

namespace App\Policies;

use App\User;
use App\General\Area;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class AreaPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Area';


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
    //  * @param  \App\Area  $area
    //  * @return mixed
    //  */
    // public function view(User $user, Area $area)
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
    //  * @param  \App\Area  $area
    //  * @return mixed
    //  */
    // public function update(User $user, Area $area)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Area  $area
    //  * @return mixed
    //  */
    // public function delete(User $user, Area $area)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Area  $area
    //  * @return mixed
    //  */
    // public function restore(User $user, Area $area)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Area  $area
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Area $area)
    // {
    //     //
    // }
}
