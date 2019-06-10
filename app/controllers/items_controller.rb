class ItemsController < ApplicationController
# before_action :authenticate_user!, only: [:new]

    def index
        $query = Item.ransack(params[:q])
        
        @ladies =Item.ransack(by_name: "レディース").result.order(created_at: "DESC").limit(4)
        @mens =  Item.ransack(by_name: "メンズ").result.order(created_at: "DESC").limit(4)
        @baby =  Item.ransack(by_category_id: 3).result.order(created_at: "DESC").limit(4)
        @interior =  Item.ransack(by_category_id: 4).result.order(created_at: "DESC").limit(4)
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
        @comment = Comment.new
        @comments = @item.comments
    end

    def search
        $query = Item.ransack(params[:q])
        @items = Item.ransack(name_cont: params[:keyword]).result.all
       
    end

    private
    def item_params
        params.permit(:name, :description, :category_id, :status, :shipping_fee, :how_to_shipping, :area, :day, :price, item_images_attributes: [:image])
    end
          #  .require(:item)    #  , :size,   .merge(user_id: current_user.id)
    def search_params
        binding.pry
      params.require(:q).permit(:name_cont)
    end

    def comment_params

    end
end

