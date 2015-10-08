# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  address     :string
#  latitude    :float
#  longitude   :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Shop < ActiveRecord::Base
  has_many :comments
end
