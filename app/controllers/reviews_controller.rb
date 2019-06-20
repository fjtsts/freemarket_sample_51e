class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sold_exhibits = current_user.exhibits.where(status: 2)
    @reviews = []
    @sold_exhibits.each do |exhibit|
      @reviews.push(exhibit.item.review)
    end
    @reviews.sort_by! { |a| a[:id]}.sort
    @reviews = @reviews.sort.reverse
  end

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

  def show
  end

  private

  def review_params
    params.require(:review).permit(:status, :content).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
