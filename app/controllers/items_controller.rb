class ItemsController < ApplicationController
     
  before_action :authenticate_user!, only: [:new, :create, :resale, :stop, :destroy]
  before_action :set_parents, only: [:new, :edit]
  before_action :set_item, only: [:show, :edit, :update, :resale, :stop, :destroy]
  before_action :set_image, only: [:edit, :update]

  def index
    $query = Item.ransack(params[:q])
    @ladies =Item.where(category_id: Category.first.subtree_ids).latest_four_items
    @mens =  Item.where(category_id: Category.second.subtree_ids).latest_four_items
    @baby =  Item.where(category_id: Category.third.subtree_ids).latest_four_items
    @interior =  Item.where(category_id: Category.fourth.subtree_ids).latest_four_items
    @chanel =Brand.first.items.latest_four_items
    @vuitton =Brand.second.items.latest_four_items
    @supreme =Brand.third.items.latest_four_items
    @nike=Brand.fourth.items.latest_four_items
  end

  def new
    render layout: 'form-layout'
    @item = Item.new
    @image = @item.item_images.build
  end

  def create
    if params[:brands][:name].present?
      brand = Brand.find_by(name: params[:brands][:name])
      brand_id = brand.present? ? brand.id : Brand.create(name: params[:brands][:name]).id
    end
    @item = Item.new(item_params)
    @item[:brand_id] = brand_id
    if @item.save
      params[:images][:image].reverse.each do |i|
        @image = @item.item_images.create(image: i.tempfile, item_id: @item.id)
      end
      Exhibit.create(item_id: @item.id, user_id: current_user.id)
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    render layout: 'form-layout'
  end

  def update
    brand_id　= nil
    if params[:item][:brands][:name].present?
      brand = Brand.find_by(name: params[:item][:brands][:name])
      brand_id = brand.present? ? brand.id : Brand.create(name: params[:item][:brands][:name]).id
    end
    @item[:brand_id] = brand_id
    if @item.update(item_parameter)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def show
    @brand = @item.brand
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
    @parents = Category.where(id: 1..13)
    @children = @parents.where(id: params[:id])
    $query = Item.ransack(params[:q])
    @items = $query.result.includes(:category, :brand)
    @new_items =Item.all.order(created_at: "DESC")
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

  def set_image
    @images = @item.item_images
  end

  def item_params
    params.permit(:name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price, images_attributes: [:image])
  end

  def item_parameter
    params.require(:item).permit(:name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price)
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

  def search_params
    params.require(:q).permit(:name_cont)
  end
end

