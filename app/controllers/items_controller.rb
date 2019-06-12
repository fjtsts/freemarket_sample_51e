class ItemsController < ApplicationController
before_action :authenticate_user!, only: :new
before_action :set_parents, only: [:new, :edit]

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
    end

    def create
        @item = Item.create(item_params)
        if @item.save
            params[:item_images][:image].each do |i|   # .reverse
                @image = @item.item_images.create(image: i.tempfile, item_id: @item.id)
            end
            Exhibit.create(item_id: @item.id, user_id: current_user.id)
            # if ( Brand.where(name: params[:brands][:name]) )　　　一致したらreateせず既存のidを渡す、しなければcrea  find_or_initialize_by
            Brand.create(name: params[:brands][:name])
            # end
            redirect_to root_path
        else
            render :index
        end
    end

    # def edit
    #     @images = @item.images
    #     @category = @item.category
    # end

    def show
       
        @item = Item.find(params[:id])
        @category =@item.category
<<<<<<< HEAD
        @brand = @item.brand

=======
        @comment = Comment.new
        @comments = @item.comments
>>>>>>> 1792acb27bfeeaf34e6a66bf299fcb06505db32d
    end

    def resale
        @item = Item.find(params[:id])
        @item.exhibit.status = 1
        @item.exhibit.save
        redirect_to action: 'show', id: @item.id
    end

    def stop
        @item = Item.find(params[:id])
        @item.exhibit.status = 3
        @item.exhibit.save
        redirect_to action: 'show', id: @item.id
    end

    def search
        $query = Item.ransack(params[:q])
<<<<<<< HEAD
        @items = $query.result.includes(:category, :brand)
        # binding.pry
    
=======
        @items = Item.ransack(name_cont: params[:keyword]).result.all
    end

>>>>>>> 1792acb27bfeeaf34e6a66bf299fcb06505db32d

    end
    private
    def item_params
        params.permit(:name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price, item_images_attributes: [:image])
    end
          #  .require(:item)    #   .merge(user_id: current_user.id)
    def set_parents
        @parents = Category.where(ancestry: nil)
    end
 
    def search_params
      params.require(:q).permit(:name_cont)
    end

    def comment_params

    end
