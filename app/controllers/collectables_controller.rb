class CollectablesController < ApplicationController
  def index
    @items = Item.where(category_id: 7)
  end

end
