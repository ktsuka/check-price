class HomeController < ApplicationController
  def index
    @items = Price.check
  end
end
