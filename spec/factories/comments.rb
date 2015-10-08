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

FactoryGirl.define do
  factory :comment do
  end
end
