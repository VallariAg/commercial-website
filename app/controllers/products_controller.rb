require 'yaml'

class ProductsController < ApplicationController
  def index
    @products = helpers.get_all_products()
  end

  def show
    product = YAML::load(File.open("data/products/" + params[:product_id] + ".yaml"))
    @title = product[:title]
    @description = product[:description]
    @icon = product[:icon]
    @items = product[:items]
  end
end
