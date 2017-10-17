class ItemsController < ApplicationController
  def index
    @items = if params[:something]
      Item.find_by(name: params[:something])
    else
      Item.all
    end
  end

end
