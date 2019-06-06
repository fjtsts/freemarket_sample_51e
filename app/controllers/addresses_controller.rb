class AddressesController < ApplicationController
  
  def index
  end
  
  def new
  end

  def create
  end

  def edit
  end

  def show
    @user_profile = UserProfile.find(current_user.id)
    @address = Address.find(current_user.id)
  end
  
end
