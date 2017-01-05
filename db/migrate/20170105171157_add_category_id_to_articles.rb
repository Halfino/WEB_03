class AddCategoryIdToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :category, index: true, foreign_key: true
    add_foreign_key :articles, :categories
  end
end
