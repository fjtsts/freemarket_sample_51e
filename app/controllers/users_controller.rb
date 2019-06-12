class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :new, :logout]
  def index
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def new
    render layout: 'form-layout'
  end

  def update
    begin
      if current_user.update(user_params)
        # current_user.user_profile.update(user_profile_params)
        redirect_to controller: 'users', action: 'edit'
      else
        render :edit
      end
    rescue => e
      render :edit 
    end
  end

  def logout
  end

  private

  # def user_params
  #   params.require(:user).permit(:nickname)
  # end

  # def user_profile_params
  #   params.require(:user).require(:user_profile).permit(:introduction)
  # end
  def user_params
    params.require(:user).permit(:nickname, userprofile_attributes: [:introduction])
  end
end
