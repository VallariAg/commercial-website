class ItemController < ApplicationController
  def index
    item_id = params[:item_id]
    product = YAML::load(File.open("data/products/" + params[:product_id] + ".yaml"))
    @item = product[:items][item_id]
  end
end
