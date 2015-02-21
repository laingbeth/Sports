class PlayersController < ApplicationController

  def index
    @player_data = Player.party
  end


end
