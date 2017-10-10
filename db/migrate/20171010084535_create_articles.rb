class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :short_title
      t.string :keywords

      t.timestamps null: false
    end
  end
end
