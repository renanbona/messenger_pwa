require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
    let(:user) { create(:user) }

    before { sign_in user }

    it "returns http success" do
      get :index, params: {}

      expect(response).to have_http_status(:success)
    end
  end
end
