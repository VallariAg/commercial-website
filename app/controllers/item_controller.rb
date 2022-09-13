class ItemController < ApplicationController
  def index
    item_id = params[:item_id]
    product_id = params[:product_id]
    product_info = YAML::load(File.open("data/products/" + product_id + ".yaml"))
    @product_name = product_info[:title]
    @product_route = "/" + product_info[:id]
    @item = product_info[:items][item_id]
    puts @item
  end
end
