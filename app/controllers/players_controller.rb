class PlayersController < ApplicationController

  def index
    @player = Player.party
  end

end
