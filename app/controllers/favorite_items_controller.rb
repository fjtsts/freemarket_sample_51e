class FavoriteItemsController < ApplicationController

  before_action :set_item

  # begin
    def create
      @favorite_item = FavoriteItem.create(user_id: current_user.id, item_id: params[:item_id])
      @item.reload
    end

    def destroy
      favorite_item = FavoriteItem.find_by(user_id: current_user.id, item_id: params[:item_id])
      favorite_item.destroy
      @item.reload
    end
  # end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end

