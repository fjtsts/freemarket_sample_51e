class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index
        @items = Item.all.order("created_at DESK").limit(4)
        
    end

    def new
        render layout: 'form-layout'
        @item = Item.new
        # @image = @item.images.build
        # @category = Category.ids
        # @categories = Category.all
    end

end
