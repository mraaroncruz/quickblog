class ArticlesController < ApplicationController
  def index
    @articles = Article.available
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end
end
