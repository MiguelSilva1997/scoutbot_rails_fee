class MainController < ApplicationController

  def index
    @top_players = ScoutBot.new().top_players
  end

end
