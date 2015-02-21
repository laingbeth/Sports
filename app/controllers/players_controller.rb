class PlayersController < ApplicationController

  def index
    @player = Player.party
  end

  def show
    @active = 'players'
    @player - Player.find(params[:player_full_name])
  end
end
