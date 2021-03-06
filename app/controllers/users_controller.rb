class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :logout]
  before_action :set_review, only: [:index, :show]
  def index
    @user = User.find(current_user.id)
    @sold_exhibits = @user.exhibits.where(status: 2)
    @reviews = []
    @sold_exhibits.each do |exhibit|
      @reviews.push(exhibit.item.review)
    end
    @review_count = @reviews.count
  end

  def show
    @user = User.find(params[:id])
    @sold_exhibits = @user.exhibits.where(status: 2)
    @reviews = []
    @sold_exhibits.each do |exhibit|
      @reviews.push(exhibit.item.review)
    end
    @review_count = @reviews.count
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
    @exhibits = @user.exhibits
  end

  def edit
  end

  def new
    render layout: 'form-layout'
  end

  def update
    begin
      if current_user.update(user_params)
        current_user.user_profile.update(user_profile_params)
        redirect_to controller: 'users', action: 'edit'
      else
        render :edit
      end
    rescue => e
      render :edit 
    end
  end

  def logout
  end

  private
  def set_review
    @sold_exhibits = current_user.exhibits.where(status: 2)
    @reviews = []
    @sold_exhibits.each do |exhibit|
      @reviews.push(exhibit.item.review)
    end
  end

  def user_params
    params.require(:user).permit(:nickname)
  end

  def user_profile_params
    params.require(:user).require(:user_profile).permit(:introduction)
  end

end
