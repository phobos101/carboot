class LiteratureController < ApplicationController
  def index
    @items = Item.where(category_id: 10)
  end

end
