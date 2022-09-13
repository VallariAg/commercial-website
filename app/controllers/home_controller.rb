class HomeController < ApplicationController
  def index
    data =  YAML::load(File.open("data/home.yaml"))
    product_list = data["products"]
    @products = helpers.get_featured_products(product_list)
    @intro = data["intro"]

  end
end
