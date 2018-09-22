class Price
  # MixIn
  include ActiveModel::Model
  #require 'nokogiri'
  
  def self.check
    
    prev_url = "https://store.ishibashi.co.jp/ec/proList/doSearch/srDispProductList/1/1/%20/11430000000/1/%20/%20/%20/%20/%20/%20/1/40/"
    post_url = "/0?jp=on&wd=%20&searchType=0&excludeSearchWord=&facetSearchType=0"
    item_array = Array.new
    price_array = Array.new
    item_num = 0  
    
    url = prev_url + item_num.to_s + post_url
    require 'open-uri'
    doc = Nokogiri::HTML(open(url))
    
    doc.xpath("//p[@class=\"item\"]").each do |item|
      item_array.push(item.text.gsub("\/ ","").gsub(" …",""))
    end
   
    item_array
  
  end

end