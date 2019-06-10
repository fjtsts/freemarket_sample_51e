class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  def update
    @item = Item.find(params[:item_id])
    if current_user.id == @item.exhibit.user.id
      @comment = Comment.find(params[:id])
      @comment.content = "出品者がコメントを削除しました"
      @comment.save
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(item_id: params[:item_id], user_id: current_user.id)
  end
end
