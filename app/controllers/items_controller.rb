class ItemsController < ApplicationController
    def index
        @items = Item.all
        @category1 = Category.find(1)
        @category2= Category.find(2)
        @category3= Category.find(3)
        @category4= Category.find(4)
        @items1 =  @category1.items.all.order("created_at DESC").limit(4)
        @items2 =  @category2.items.all.order("created_at DESC").limit(4)
        @items3 =  @category3.items.all.order("created_at DESC").limit(4)
        @items4 =  @category4.items.all.order("created_at DESC").limit(4)
        @brand1 = Brand.find(1)
        @brand2= Brand.find(2)
        @brand3= Brand.find(3)
        @brand4=  Brand.find(4)
        @items11 =@brand1.items.all.order("created_at DESC").limit(4)
        @items22 =@brand2.items.all.order("created_at DESC").limit(4)
        @items33 =@brand3.items.all.order("created_at DESC").limit(4)
        @items44 =@brand4.items.all.order("created_at DESC").limit(4)
    end

    def new
        render layout: 'form-layout'
    end
    
end
