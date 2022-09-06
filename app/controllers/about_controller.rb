class AboutController < ApplicationController
  def index
    @sections = YAML::load(File.open("data/about.yaml"))
  end
end
