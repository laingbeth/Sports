class PlayersController < ApplicationController
 before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, except: [:index, :show]
  before_action :correct_user,   except: [:new, :create, :index, :show]

  def index
    @player_data = Player.party
    @metadata = @player_data['rootmetadata'][0]
   @salaries = @player_data['salaries'][0]
  end

  def show
    
  end

  def new
    
  end

  def favorites
    
  end
private

  def player_params
    params.require(:player).permit(:player_full_name, :team_full_name, :position_desc, :salary, :season, :user_id)
  end

  def set_player
    @player - Player.find(params[:id])
  end

  def correct_user
    unless current_user?(@player.user) || current_user.admin?
      redirect_to user_path(current_user)
    end  
  end

end
