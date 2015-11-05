class GardenController < ApplicationController
  def index
    @items = Item.where(category_id: 3)
  end

end
