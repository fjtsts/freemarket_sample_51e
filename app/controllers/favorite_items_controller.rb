class FavoriteItemsController < ApplicationController

  before_action :set_variables
  
  def create
    @favorite_item = FavoriteItem.create(item_id: params[:item_id])
    @favorite_items = FavoriteItem.where(item_id: params[:item_id])
  end

  def destroy
    favorite_item = FavoriteItem.find_by(item_id: params[:item_id], user_id: current_user.id)
    favorite_item.destroy
    @favorite_items = FavoriteItem.where(item_id: params[:item_id])
  end

  private

  def set_variables
    @item = Item.find(params[:item_id])
  end

end
