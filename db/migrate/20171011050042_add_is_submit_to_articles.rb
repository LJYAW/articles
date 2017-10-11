class AddIsSubmitToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_submit, :boolean
  end
end
