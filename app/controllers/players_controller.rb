class PlayersController < ApplicationController
 before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, except: [:index, :show]
  before_action :correct_user,   except: [:new, :create, :index, :show]

  def index
    @player_data = Player.party
    @metadata = @player_data['rootmetadata'][0]
   @salaries = @player_data['salaries'][0]
  end


end
