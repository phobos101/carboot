class MotorsController < ApplicationController
  def index
    @items = Item.where(category_id: 9)
  end

end
