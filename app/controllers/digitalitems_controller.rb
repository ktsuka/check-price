class DigitalitemsController < ApplicationController
  #before_action :set_item, only: [:show]

  def index
    #@digitalitems=DigitalItem.all
    #️@item = DigitalItem.new()
    #@items = DigitalItem.select(:itemid)
  end
  
  def show
    @item=DigitalItem.find(params[:id]) 
  end
  
  def check
      @digitalitems=DigitalItem.paginate(page: params[:page], per_page: 40).check(params[:q])
  end

end
