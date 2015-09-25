require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  context 'アクセステスト' do
    describe 'GET #index' do
      it 'return http success' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end
