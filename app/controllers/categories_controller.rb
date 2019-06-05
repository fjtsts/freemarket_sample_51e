class CategoriesController < ApplicationController
  def show
    @parents = Category.where(ancestry: nil)
end
