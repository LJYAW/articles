class AddIsSelectToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_select, :boolean
  end
end
