class UsersController < ApplicationController
  def show
    @sideArticles = Article.where(category_id: 2).where(published: "t")
    @user = User.find(params[:id])
  end
end
