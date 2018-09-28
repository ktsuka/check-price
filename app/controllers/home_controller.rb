class HomeController < ApplicationController
  def index
    @item = DigitalItem.new()
    @items = DigitalItem.select(:itemid)
  end
  
  def new
  end
end
