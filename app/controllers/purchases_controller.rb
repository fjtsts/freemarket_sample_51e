class PurchasesController < ApplicationController

  def new
    @item = Item.find(params[:id])
    render layout: 'form-layout'
  end

end
