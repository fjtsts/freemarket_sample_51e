class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index
        $parents = Category.all.order("id ASC").limit(13)
        @brands = Brand.all.order("id ASC").limit(4)
        @items1 =  Category.first.items.all.order("created_at DESC").limit(4)
        @items2 =  Category.second.items.all.order("created_at DESC").limit(4)
        @items3 =  Category.third.items.all.order("created_at DESC").limit(4)
        @items4 =  Category.fourth.items.all.order("created_at DESC").limit(4)
        @items11 =Brand.first.items.all.order("created_at DESC").limit(4)
        @items22 =Brand.second.items.all.order("created_at DESC").limit(4)
        @items33 =Brand.third.items.all.order("created_at DESC").limit(4)
        @items44 =Brand.fourth.items.all.order("created_at DESC").limit(4)

    end

    def new
        render layout: 'form-layout'
        @item = Item.new
        # @image = @item.item_images.build
        @category = Category.ids
        @categories = Category.all
    end

    def show
        @item = Item.find(params[:id])

    end

    def create
    end

    # def create
    # end

    # def edit
    #     @images = @product.images
    #     @category = @product.category
    #     @categories = Category.all
    # end

end
