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

require 'rails_helper'

RSpec.describe Shop, type: :model do
  context 'has many' do
    it 'Comment' do
      is_expected.to have_many(:comments)
    end
  end
end
