class FavoriteItemsController < ApplicationController

  before_action :set_item

    def create
      @favorite_item = FavoriteItem.create(user_id: current_user.id, item_id: params[:item_id])
      if @favorite_item.save
      else
      end
      @item.reload
    end

    def destroy
      @favorite_item = FavoriteItem.find_by(user_id: current_user.id, item_id: params[:item_id])
      @favorite_item.destroy
      if @favorite_item.save
      else
      end
      @item.reload
    end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end

