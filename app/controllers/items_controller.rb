class ItemsController < ApplicationController
    def index
        category1 = Category.find(1)

        @items = Item.all.order("created_at DESC").limit(4)
        
    end

    def new
        render layout: 'form-layout'
    end
    
end
