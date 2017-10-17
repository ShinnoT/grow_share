class ItemsController < ApplicationController
  def index
    @items = Item.all

    if params[:search]
      @items = Item.search(params[:search])
    else
      @items = Item.all
    end
  end

  def show
  end

  def new
  end

  def create
  end
end
