class CommentsController < ApplicationController
  def create
    comment = current_user.comments.new(params[:comment])
    comment.article_id = params[:article_id]
    redirect_to :back
  end
end
