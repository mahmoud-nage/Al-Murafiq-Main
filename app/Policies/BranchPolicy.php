<?php

namespace App\Policies;

use App\User;
use App\Nova\Branch;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class BranchPolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'Branch';


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
    //  * @param  \App\Branch  $branch
    //  * @return mixed
    //  */
    // public function view(User $user, Branch $branch)
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
    //  * @param  \App\Branch  $branch
    //  * @return mixed
    //  */
    // public function update(User $user, Branch $branch)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Branch  $branch
    //  * @return mixed
    //  */
    // public function delete(User $user, Branch $branch)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Branch  $branch
    //  * @return mixed
    //  */
    // public function restore(User $user, Branch $branch)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Branch  $branch
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Branch $branch)
    // {
    //     //
    // }
}
