class ElectronicsController < ApplicationController
  def index
    @items = Item.where(category_id: 4)
  end

end
