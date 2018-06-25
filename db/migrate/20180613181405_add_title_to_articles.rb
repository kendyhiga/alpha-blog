class AddTitleToArticles < ActiveRecord::Migration
  def change
    if column_exists? :articles, :title
      remove_column :articles, :title
    end
    add_column :articles, :title, :string
  end
end
