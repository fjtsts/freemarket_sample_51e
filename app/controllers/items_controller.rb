class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index

        @parents = Category.all.order("id ASC").limit(13)
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
        @image = @item.item_images.build
        @category = Category.ids
        @categories = Category.all
    end

    def create
        @item = Item.create(item_params)

        if @item.save
            params[:item_images][:image].each do |i|   # .reverse
                @image = @item.item_images.create(image: i.original_filename, item_id: @item.id)
            end
            # association,dbcreateまだ
            # @item.exihibits.create(status: 1,item_id: @item.id, user_id: current_user.id)
            redirect_to root_path
        else
            render :index
        end
    end

    # def edit
    #     @images = @item.images
    #     @category = @item.category
    #     @categories = Category.all
    # end

    def show
        @item = Item.find(params[:id])

    end




    private
    def item_params
        params.permit(:name, :description, :status, :shipping_fee, :how_to_shipping, :area, :day, :price, item_images_attributes: [:image])
    end
          #  .require(:item)    #  , :size, :category_id,  .merge(user_id: current_user.id)
end
