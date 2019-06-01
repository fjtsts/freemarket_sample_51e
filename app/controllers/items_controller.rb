class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index
        # category = Category.find(params[:id])
        # categories = [
        # category.children
        # category.children.map { |category| category.children }
        # ].flatten.compact

        @items = Item.all.order("created_at DESC").limit(4)
        
    end

    def new
        render layout: 'form-layout'
        @item = Item.new
        @image = @item.item_images.build
        @category = Category.ids
        @categories = Category.all
    end

    # def create
    # end

    # def edit
    #     @images = @product.images
    #     @category = @product.category
    #     @categories = Category.all
    # end

end
