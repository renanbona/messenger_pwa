require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET #index' do
    context 'when user is not logged in' do
      it 'redirects to log in page' do
        get :index

        expect(response).to have_http_status(302)
      end
    end

    context 'when user is logged in' do
      let(:user) { create(:user) }

      it 'returns a successfull response' do
        sign_in user
        get :index

        expect(response).to have_http_status(200)
      end
    end
  end
end
