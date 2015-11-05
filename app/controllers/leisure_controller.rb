class LeisureController < ApplicationController
  def index
    @items = Item.where(category_id: 6)
  end

end
