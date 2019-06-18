class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :resale, :stop, :destroy]
  before_action :set_parents, only: [:new, :edit]
  before_action :set_item, only: [:show, :resale, :stop, :destroy]

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
    if params[:brands][:name] != ""
      if brand = Brand.find_by(name: params[:brands][:name])
        params[:brands][:brand_id] = brand.id
      else
        params[:brands][:brand_id] = Brand.create(name: params[:brands][:name]).id
      end
    end
    @item = Item.create(item_params)       
    if @item.save
      params[:images][:image].reverse.each do |i|
        @image = @item.item_images.create(image: i.tempfile, item_id: @item.id)
      end
      Exhibit.create(item_id: @item.id, user_id: current_user.id)
      redirect_to root_path
    else
      render :index
    end
  end

  # def edit
  #   @images = @item.images
  #   @category = @item.category
  # end

  def show
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
    @item.exhibit.status = 1
    @item.exhibit.save
    redirect_to action: 'show', id: @item.id
  end

  def stop
    @item.exhibit.status = 3
    @item.exhibit.save
    redirect_to action: 'show', id: @item.id
  end

  def search
    $query = Item.ransack(params[:q])
    @items = Item.ransack(name_cont: params[:keyword]).result.all
  end

  def destroy
    @item.destroy
    redirect_to controller: 'exhibits', action: 'index'
  end

  def select_category
    @category = Category.find(params[:parent_id])
    puts params[:parent_id]
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end


  def item_params
      params.permit(:name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price, images_attributes: [:image]).merge(brand_id: params[:brands][:brand_id])
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

  def search_params
    params.require(:q).permit(:name_cont)
  end
end
