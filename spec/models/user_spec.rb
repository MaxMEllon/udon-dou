require 'rails_helper'

RSpec.describe User, type: :model do
  context 'has many' do
    it 'Comment' do
      is_expected.to have_many(:comments)
    end
  end
end
