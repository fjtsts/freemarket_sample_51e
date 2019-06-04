require 'rails_helper'


describe ItemsController do
  before do
    create_list(:category,10)
    create(:brand)
    
    create_list(:item,10)
    
  end
  describe 'Get #index' do
    it "renders the :new template" do
      
      get :index
      expect(response).to render_template :index
    end
  end
end

  



   
