class PlayersController < ApplicationController

  def index
    @player_data = Player.party
    @metadata = @player_data['rootmetadata'][0]
   @salaries = @player_data['salaries'][0]
  end


end
