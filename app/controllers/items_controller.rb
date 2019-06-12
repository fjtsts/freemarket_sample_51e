class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index
       
        $query = Item.ransack(params[:q])
        @ladies =Item.where(category_id: Category.first.subtree_ids).all.order(created_at: "DESC").limit(4)
        @mens =  Item.where(category_id: Category.second.subtree_ids).all.order(created_at: "DESC").limit(4)
        @baby =  Item.where(category_id: Category.third.subtree_ids).all.order(created_at: "DESC").limit(4)
        @interior =  Item.where(category_id: Category.fourth.subtree_ids).all.order(created_at: "DESC").limit(4)
        @chanel =Brand.first.items.all.order("created_at DESC").limit(4)
        @vuitton =Brand.second.items.all.order("created_at DESC").limit(4)
        @supreme =Brand.third.items.all.order("created_at DESC").limit(4)
        @nike=Brand.fourth.items.all.order("created_at DESC").limit(4)
    end

    def new
        render layout: 'form-layout'
        @item = Item.new
        @image = @item.item_images.build
        # @category = Category.ids
        # @categories = Category.all
        # @parents = Category.all.order("id ASC").limit(13)
    end

    def create
        @item = Item.create(item_params)

        if @item.save
            params[:item_images][:image].each do |i|   # .reverse
                @image = @item.item_images.create(image: i.tempfile, item_id: @item.id)
            end
            Exhibit.create(item_id: @item.id, user_id: current_user.id)
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
        @category =@item.category
        @brand = @item.brand

    end
    def search
        $query = Item.ransack(params[:q])
        @items = $query.result.includes(:category, :brand)
        # binding.pry
    

    end
    private
    def item_params
        params.permit(:name, :description, :category_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price, item_images_attributes: [:image])
    end
          #  .require(:item)    #  , :size,   .merge(user_id: current_user.id)
    def search_params
      params.require(:q).permit(:name_cont)
    end
end

