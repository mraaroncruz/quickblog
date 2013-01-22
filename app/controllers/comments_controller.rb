class CommentsController < ApplicationController
  def create
    comment = current_user.comments.new(params[:comment])
    comment.article_id = params[:article_id]
    comment.save
    redirect_to :back, notice: "Saved your comment"
  end
end
