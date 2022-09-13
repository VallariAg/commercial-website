class AboutController < ApplicationController
  def index
    data = YAML::load(File.open("data/about.yaml"))
    @QandA = data["QandA"]
  end
end
