class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @review
    @review = Review.create(review_params)
    redirect_to controller: 'items', action: 'show', id: params[:item_id]
  end

  def new
    @item = Item.find(params[:item_id])
    @review = Review.new
    render layout: 'form-layout'
  end

  private

  def review_params
    params.require(:review).permit(:status, :content).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
