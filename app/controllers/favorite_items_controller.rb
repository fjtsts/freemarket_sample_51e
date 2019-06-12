class FavoriteItemsController < ApplicationController

  def create
    @favorite_item = current_user.favorite_items.create(item_id: params[:item_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite_item = FavoriteItem.find_by(item_id: params[:item_id], user_id: current_user.id)
    @favorite_item.destroy
    redirect_back(fallback_location: root_path)
  end

end
