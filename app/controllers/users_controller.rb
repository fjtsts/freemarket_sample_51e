class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :new, :logout]
  def index
    @user = User.find(current_user.id)
    @sold_exhibits = current_user.exhibits.where(status: 2)
    @reviews = []
    @sold_exhibits.each do |exhibit|
      @reviews.push(exhibit.item.review)
    end
    @review_count = @reviews.count
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def new
    render layout: 'form-layout'
  end

  def logout
  end

end
