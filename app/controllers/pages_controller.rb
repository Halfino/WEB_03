class PagesController < ApplicationController
  def index
    @sideArticles = Article.where(category_id: 2).where(published: "t")
    @mainArticles = Article.where(category_id: 1).where(published: "t")
  end

  def sitters
    @sideArticles = Article.where(category_id: 2).where(published: "t")
    @mainArticles = Article.where(category_id: 1).where(published: "t")
  end
end
