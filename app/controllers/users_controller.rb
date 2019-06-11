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

  def logout
  end

end
