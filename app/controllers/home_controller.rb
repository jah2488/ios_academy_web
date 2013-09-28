class HomeController < ApplicationController

  def index
    @episodes = Episode.last_ten
  end

end
