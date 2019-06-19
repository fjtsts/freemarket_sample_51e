class BrandsController < ApplicationController
  def index
    @parents = []
    category =Category.where(ancestry: nil).limit(4)
    @sort = ('ア'..'ン').to_a
    @brand =Brand.all
    kitchin = Category.find(62)
    watch = Category.find(27)
    game = Category.find(81)
    phone =Category.find(104)
   
    category.each do |category|
      @parents.push(category)
    end
    @parents.push(kitchin,watch,game,phone)
  end
  def show
    @brand = Brand.find(params[:id])
    @items = Item.where(brand_id:params[:id]).all
  end


end
