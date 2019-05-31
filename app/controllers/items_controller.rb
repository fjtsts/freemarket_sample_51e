class ItemsController < ApplicationController
    def index
        @items = Item.all.order("created_at DESK").limit(4)

    end

    def new
    end
    
end
