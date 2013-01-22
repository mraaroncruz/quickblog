class Admin::DashboardController < ApplicationController
  before_filter :check_admin
  def index
    @latest_articles = current_user.articles.order("published_on DESC")
  end

  private
  def check_admin
    redirect_to root_path, notice: "You are not authorized" unless current_user.admin?
  end
end
