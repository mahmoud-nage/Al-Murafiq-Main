<?php

namespace App\Policies;

use App\User;
use App\General\Zone;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class ZonePolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Zone';


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
    //  * @param  \App\Zone  $zone
    //  * @return mixed
    //  */
    // public function view(User $user, Zone $zone)
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
    //  * @param  \App\Zone  $zone
    //  * @return mixed
    //  */
    // public function update(User $user, Zone $zone)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Zone  $zone
    //  * @return mixed
    //  */
    // public function delete(User $user, Zone $zone)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Zone  $zone
    //  * @return mixed
    //  */
    // public function restore(User $user, Zone $zone)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Zone  $zone
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Zone $zone)
    // {
    //     //
    // }
}
