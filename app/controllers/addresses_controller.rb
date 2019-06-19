class AddressesController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
  end

  def edit
  end

  def update
    address = current_user.address
    if address.update(addresses_params)
      redirect_to edit_address_path
    else
      render :edit
  end

  def show
  end

end

private
  def addresses_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kata, :first_name_kata, :postal_code, :prefecture, :city, :town_number, :building)
  end
end
