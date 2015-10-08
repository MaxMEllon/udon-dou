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
