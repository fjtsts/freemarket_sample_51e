class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @item = Item.find(params[:item_id])
    if current_user.id == @item.exhibit.user.id
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(item_id: params[:item_id], user_id: current_user.id)
  end
end
