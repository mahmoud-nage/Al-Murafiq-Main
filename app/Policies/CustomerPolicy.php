<?php

namespace App\Policies;

use App\Company\Company;
use App\User;
use App\Customer\Customer;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class CustomerPolicy
{
    use HandlesAuthorization;

    public static $key = 'Customer';

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->can('view Customer');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\Customers  $customers
     * @return mixed
     */
    public function view(User $user, Customer $customers)
    {
        return $user->can('view own Customer');
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
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\Customers  $customers
     * @return mixed
     */
    public function update(User $user, Customer $customers)
    {
        return false;

    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Customers  $customers
     * @return mixed
     */
    public function delete(User $user, Customer $customers)
    {
        return false;
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Customers  $customers
     * @return mixed
     */
    public function restore(User $user, Customer $customers)
    {
        return false;
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Customers  $customers
     * @return mixed
     */
    public function forceDelete(User $user, Customer $customers)
    {
        return false;
    }

}
