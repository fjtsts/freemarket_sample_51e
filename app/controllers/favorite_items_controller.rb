class FavoriteItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:create, :destroy]

    def index
      @likes = current_user.favorite_items
    end

    def create
      @favorite_item = FavoriteItem.create(user_id: current_user.id, item_id: params[:item_id])
      @item.reload
    end

    def destroy
      @favorite_item = FavoriteItem.find_by(user_id: current_user.id, item_id: params[:item_id])
      @favorite_item.destroy
      @item.reload
    end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end

