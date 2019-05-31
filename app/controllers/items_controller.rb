class ItemsController < ApplicationController
    def index
        @category = Category.find(1)
        @category1 = Category.find(2)

        @items = Item.all.order("created_at DESC").limit(4)
        
    end

    def new
        render layout: 'form-layout'
    end
    
end
