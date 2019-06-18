class ItemsController < ApplicationController
before_action :authenticate_user!, only: :new
before_action :set_parents, only: [:new, :edit]

    def index
       
        $query = Item.ransack(params[:q])
        @ladies =Category.first.items.all.order(created_at: "DESC").limit(4)
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
    end

    def create
        # if ( Brand.where(name: params[:brands][:name]) )　　　一致したらreateせず既存のidを渡す、しなければcrea  find_or_initialize_by
        Brand.create(name: params[:brands][:name])
        @item = Item.create(item_params)
        if @item.save
            params[:item_images][:image].reverse.each do |i|
                @image = @item.item_images.create(image: i.tempfile, item_id: @item.id)
            end
            Exhibit.create(item_id: @item.id, user_id: current_user.id)
            
            redirect_to root_path
        else
            render :index
        end
    end

    def edit
    end

    def show
        @item = Item.find(params[:id])
        @category =@item.category
        @comment = Comment.new
        @comments = @item.comments
        @user = @item.exhibit.user
        @sold_exhibits = @user.exhibits.where(status: 2)
        @reviews = []
        @sold_exhibits.each do |exhibit|
            @reviews.push(exhibit.item.review)
        end
        @review_good_count = 0
        @review_normal_count = 0
        @review_bad_count = 0
        @reviews.each do |review|
            if review.status == 1
                @review_good_count = @review_good_count + 1
            elsif review.status == 2
                @review_normal_count = @review_normal_count + 1
            else
                @review_bad_count = @review_bad_count + 1
            end
        end
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
        @items = Item.ransack(name_cont: params[:keyword]).result.all
    end
    def select_category
        @category = Category.find(params[:parent_id])
        puts params[:parent_id]
        respond_to do |format|
            format.html
            format.json
        end
    end

    end
    private
    def item_params
        params.permit(:name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price, images_attributes: [:image])
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
