class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:index, :pay]

  def index
    if current_user.card.present?
      card = current_user.card
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
    render layout: 'form-layout'
  end

  def pay
    price = @item.price
    card = current_user.card
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    amount: price,
    customer: card.customer_id,
    currency: 'jpy',
    )
    @item.exhibit.status = "2" #change status 1 to 2
    redirect_to controller: 'items', action: 'show', id: @item.id
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
