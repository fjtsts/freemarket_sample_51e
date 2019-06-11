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

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    render layout: 'form-layout'
  end

  def logout
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
