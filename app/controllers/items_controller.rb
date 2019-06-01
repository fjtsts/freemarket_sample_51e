class ItemsController < ApplicationController
    def index
        @category1 = Category.find(1)
        @category2= Category.find(2)
        @category3= Category.find(3)
        @category4= Category.find(4)
        @items =  @category1.items.all.order("created_at DESC").limit(4)
        @items2 =  @category2.items.all.order("created_at DESC").limit(4)
        @items3 =  @category3.items.all.order("created_at DESC").limit(4)
        @items4 =  @category4.items.all.order("created_at DESC").limit(4)
        
    end

    def new
        render layout: 'form-layout'
    end
    
end
