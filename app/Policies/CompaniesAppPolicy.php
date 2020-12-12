<?php

namespace App\Policies;

use App\Company\Company;
use App\User;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class CompaniesAppPolicy extends Policy
{
    use HandlesAuthorization;


    public static $key = 'CompaniesApp';


    // /**
    //  * Determine whether the user can view any models.
    //  *
    //  * @param  \App\User  $user
    //  * @return mixed
    //  */
    // public function viewAny(User $user)
    // {
    //     return true;
    // }

    // /**
    //  * Determine whether the user can view the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Company  $company
    //  * @return mixed
    //  */
    // public function view(User $user, Company $company)
    // {
    //     return true;

    // }

    // /**
    //  * Determine whether the user can create models.
    //  *
    //  * @param  \App\User  $user
    //  * @return mixed
    //  */
    // public function create(User $user)
    // {
    //     return true;

    // }

    // /**
    //  * Determine whether the user can update the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Company  $company
    //  * @return mixed
    //  */
    // public function update(User $user, Company $company)
    // {
    //     return true;
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Company  $company
    //  * @return mixed
    //  */
    // public function delete(User $user, Company $company)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Company  $company
    //  * @return mixed
    //  */
    // public function restore(User $user, Company $company)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\Company  $company
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, Company $company)
    // {
    //     //
    // }
}
