class FashionController < ApplicationController
  def index
    @items = Item.where(category_id: 1)
  end

end
