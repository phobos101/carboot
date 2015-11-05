class JewelleryController < ApplicationController
  def index
    @items = Item.where(category_id: 8)
  end

end
