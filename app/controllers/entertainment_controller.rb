class EntertainmentController < ApplicationController
  def index
    @items = Item.where(category_id: 5)
  end

end
