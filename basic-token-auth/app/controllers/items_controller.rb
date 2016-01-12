class ItemsController < ApplicationController
  def show
  	@items = Item.all

  	render json: @items, root: false
  end
end
