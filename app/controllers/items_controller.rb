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


    private
    def item_params
        params.permit(:name, :description, :status, :shipping_fee, :how_to_shipping, :area, :day, :price, item_images_attributes: [:image])
    end
          #  .require(:item)    #  , :size, :category_id,  .merge(user_id: current_user.id)
end
