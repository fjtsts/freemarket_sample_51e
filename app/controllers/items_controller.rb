class ItemsController < ApplicationController
    def index
        category = Category.find(params[:id])
        categories = [
        category.children
        category.children.map { |category| category.children }
        ].flatten.compact

        @items = Item.all.order("created_at DESC").limit(4)
        
    end

    def new
        render layout: 'form-layout'
    end
    
end
