class HomeController < ApplicationController
  def index
    @products =  YAML::load(File.open("data/products.yaml"))
  end
end
