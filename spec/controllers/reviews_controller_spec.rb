require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #set" do
    it "returns http success" do
      get :set
      expect(response).to have_http_status(:success)
    end
  end

end
