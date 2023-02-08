class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :delete]

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])

    if @comment.save
      redirect_to @post
    else
      redirect_to @post, status: :unpressable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @post
    else
      redirect_to @post, status: :unpressable_entity
    end
  end

  def delete
    @comment.destroy
    redirect_to @post, status: :see_other
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end

    def set_comment
      @comment = Comment.find(params[:id])
      @post = Post.find(@comment.post_id)
    end
end
