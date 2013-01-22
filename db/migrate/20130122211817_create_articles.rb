class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.references :user
      t.text :body
      t.datetime :published_on
      t.integer :views
      t.text :blurb

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
