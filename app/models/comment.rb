# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  user_id    :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
end
