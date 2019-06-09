class UsersController < ApplicationController
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

  def logout
  end

end
