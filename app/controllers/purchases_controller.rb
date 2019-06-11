class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.find(params[:item_id])
    if current_user.card.present?
      card = Card.where(user_id: current_user.id).first
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
    render layout: 'form-layout'
  end

  def pay
    @item = Item.find(params[:item_id])
    price = @item.price
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    :amount => price,
    :customer => card.customer_id,
    :currency => 'jpy',
    )
    @item.exhibit.status = "2" #change status 1 to 2
    redirect_to controller: 'items', action: 'show', id: @item.id
  end
end
