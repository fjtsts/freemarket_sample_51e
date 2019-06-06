class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @userprofile = UserProfile.find(current_user[:id])
    @user = User.find(current_user[:id])
  end

  def new
    render layout: 'form-layout'
  end

  def logout
  end

  def update
    @userprofile = UserProfile.find(current_user[:id])
    @user = User.find(current_user[:id])
    if current_user.update(user_params)
       current_user.user_profile.update(user_profile_params)
       redirect_to controller: 'users', action: 'edit'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname)
  end

  def user_profile_params
    params.require(:user).require(:user_profile).permit(:introduction)
  end
  
  # なぜかattributesが使えなかったためparamsを２つに分けました。
  # user_params
  #   params.require(:user).permit(:nickname, userprofile_attributes: [:introduction])
  # end
end
