class HomeController < ApplicationController
  def index
    @items = Item.where(category_id: 2)
  end

end
