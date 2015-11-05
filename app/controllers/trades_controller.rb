class TradesController < ApplicationController
  before_action :set_item, only: [:request_trade, :response_trade]
  before_action :set_trade, only: [:reject_trade, :accept_trade]

  def request_trade
    @trade = Trade.new(sender_id: current_user.id, receiver_id: @item.user.id,
                       receiver_item_id: @item.id)

    if @trade.save
      redirect_to @item
    end

  end

  def response_trade
    @trade = Trade.find(params[:trade_id])
    @trade.respond(@item)

    if @trade.save
      redirect_to @item
    end
  end

  def reject_trade
    @trade.reject

    if @trade.save
      redirect_to @trade.receiver
    end
  end

  def accept_trade
    @trade.accept

    if @trade.save
      redirect_to @trade.sender
    end
  end

  def response_page
    @trade = Trade.find(params[:id])
  end

  def finalize_page
    @trade = Trade.find(params[:id])
  end

  def accepted_page
    @trade = Trade.find(params[:id])
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def set_trade
      @trade = Trade.find(params[:id])
    end
end
