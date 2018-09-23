class HomeController < ApplicationController
  def index
    @items = DigitalItem.all
  end
end
