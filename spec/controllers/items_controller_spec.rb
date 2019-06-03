require 'rails_helper'
describe ItemsController do
     before do
      let(:items) { create_list(:item ,4) }
      let(:categories) { create_list(:category ,4) }
     end
      let(:item_categories) { create_list(:item_category ,4) }
  describe 'GET #index' do
    it "populates an array of items ordered by created_at DESC" do
      category1 = categories.first
      items1 =  category1.items
      get :index
      binding.pry


      expect(assigns(:items1)).to match(items1)
      
    end
  



    # it "renders the :index template" do
    #   get :index
    #   expect(@response).to render_template :index
      
    end 
  end
