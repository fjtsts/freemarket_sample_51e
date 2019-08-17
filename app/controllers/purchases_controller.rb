class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:index, :pay]

  def index
    if current_user.card.present?
      card = current_user.card
      Payjp.api_key = ENV["ENV['PAYJP_KEY']"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
    render layout: 'form-layout'
  end

  def purchased
    @purchases = current_user.purchases
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
    @item.exhibit.status = 2
    @item.exhibit.save
    Purchase.create(item_id: @item.id, user_id: current_user.id)
    redirect_to new_item_review_path(@item)
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
