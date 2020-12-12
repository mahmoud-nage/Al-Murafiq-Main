<?php

namespace App\Policies;

use App\User;
use App\General\CommentLike;
use Eminiarts\NovaPermissions\Policies\Policy;
use Illuminate\Auth\Access\HandlesAuthorization;

class CommentLikePolicy extends Policy
{
    use HandlesAuthorization;
    public static $key = 'CommentLike';


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
    //  * @param  \App\CommentLike  $commentLike
    //  * @return mixed
    //  */
    // public function view(User $user, CommentLike $commentLike)
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
    //  * @param  \App\CommentLike  $commentLike
    //  * @return mixed
    //  */
    // public function update(User $user, CommentLike $commentLike)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\CommentLike  $commentLike
    //  * @return mixed
    //  */
    // public function delete(User $user, CommentLike $commentLike)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can restore the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\CommentLike  $commentLike
    //  * @return mixed
    //  */
    // public function restore(User $user, CommentLike $commentLike)
    // {
    //     //
    // }

    // /**
    //  * Determine whether the user can permanently delete the model.
    //  *
    //  * @param  \App\User  $user
    //  * @param  \App\CommentLike  $commentLike
    //  * @return mixed
    //  */
    // public function forceDelete(User $user, CommentLike $commentLike)
    // {
    //     //
    // }
}
