class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index


        @parents = Category.all.order("id ASC").limit(13)
        @category1 = Category.find(1)
        @category2= Category.find(2)
        @category3= Category.find(3)
        @category4= Category.find(4)
        @items1 =  @category1.items.all.order("created_at DESC").limit(4)
        @items2 =  @category2.items.all.order("created_at DESC").limit(4)
        @items3 =  @category3.items.all.order("created_at DESC").limit(4)
        @items4 =  @category4.items.all.order("created_at DESC").limit(4)
        @brand1 = Brand.find(1)
        @brand2= Brand.find(2)
        @brand3= Brand.find(3)
        @brand4=  Brand.find(4)
        @items11 =@brand1.items.all.order("created_at DESC").limit(4)
        @items22 =@brand2.items.all.order("created_at DESC").limit(4)
        @items33 =@brand3.items.all.order("created_at DESC").limit(4)
        @items44 =@brand4.items.all.order("created_at DESC").limit(4)

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
                binding.pry
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
