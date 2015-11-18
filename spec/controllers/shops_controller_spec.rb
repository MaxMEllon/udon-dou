require 'rails_helper'

RSpec.describe ShopsController, type: :controller do
  context 'アクセステスト' do
    describe 'GET #new' do
      before do
        @user = FactoryGirl.create(:user)
      end
      it 'return http success' do
        sign_in @user
        get :new
        expect(response).to have_http_status(:success)
      end

      it 'cant access if dont sign in' do
        sign_out @user
        expect do
          get :new
        end.to raise_error(UncaughtThrowError)
      end
    end
  end
end
