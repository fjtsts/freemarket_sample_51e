class ItemsController < ApplicationController
    def index
        @items = Item.all.order("created_at DESK")
        
    end

    def new
    end
    
end
