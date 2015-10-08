class Comment < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
end
