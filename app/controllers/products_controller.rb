require 'yaml'

class ProductsController < ApplicationController
  def index
    @products =  YAML::load(File.open("data/products.yaml"))
  end

  def show
    product = YAML::load(File.open("data/products/" + params[:product_id] + ".yaml"))
    @title = product[:title]
    @description = product[:description]
    @items = product[:items]
    puts @items
  end
end
