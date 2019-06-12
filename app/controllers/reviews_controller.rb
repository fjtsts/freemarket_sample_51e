class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def new
    @item = Item.find(params[:item_id])
    @review = Review.new
    render layout: 'form-layout'
  end
end
