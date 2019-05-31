class ItemsController < ApplicationController
    def index
        @items = Item.all
        
    end

    def new
        render layout: 'form-layout'
    end
    
end
