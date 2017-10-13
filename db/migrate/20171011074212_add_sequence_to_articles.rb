class AddSequenceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sequence, :string
  end
end
