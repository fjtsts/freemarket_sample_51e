require 'rails_helper'


describe ItemsController do
  describe 'Get #index' do
 
    it "renders the :new template" do
    items = create_list(:item,4)
      get :index
      expect(response).to render_template :index
    end
  end
end

  



   
