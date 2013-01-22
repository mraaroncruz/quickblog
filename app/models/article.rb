class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: :user_id
  has_many :comments
  attr_accessible :blurb, :body, :published_on, :title, :views

  scope :available, order("published_on DESC")
end
