require 'rails_helper'

RSpec.describe SocketController, type: :controller do

  describe "GET #init" do
    it "returns http success" do
      get :init
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
