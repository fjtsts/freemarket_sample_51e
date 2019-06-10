class PurchasesController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    render layout: 'form-layout'
  end

  def create
  end

end
