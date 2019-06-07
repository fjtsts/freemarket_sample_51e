require 'rails_helper'


describe ItemsController do
  render_views
  describe 'Get #index' do
     
      let(:category){create_list(:category,4)}
      let(:brand) { create_list(:brand,4) }
      let(:items) { create_list(:item,4) }
      let(:items){create_list(:category.items)}
      let(:items1){created_list(:brand.items)}
 
    it "renders the :new template" do
      items = category.first.items
      items1 = brand.first.items

      get :index
      expect(response).to render_template :index
    end
  end
end



   
