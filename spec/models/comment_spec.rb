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

require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Model belongs to' do
    it 'User' do
      is_expected.to belong_to(:user)
    end

    it 'Shop' do
      is_expected.to belong_to(:shop)
    end
  end
end
