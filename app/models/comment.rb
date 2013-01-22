class Comment < ActiveRecord::Base
  belongs_to :artcle
  belongs_to :user
  attr_accessible :body
end
