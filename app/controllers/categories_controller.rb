class CategoriesController < ApplicationController
  def index
    @parents = Category.where(ancestry: nil)
  end
  def show
    @category = Category.find(params[:id])
    @items = @category.items.order("created_at DESC").page(params[:page]).per(60)
  end
  end

  
