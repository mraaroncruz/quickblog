class ChangePublishedOnToDateInArticles < ActiveRecord::Migration
  def up
    change_column :articles, :published_on, :date
  end

  def down
    change_column :articles, :published_on, :datetime
  end
end
