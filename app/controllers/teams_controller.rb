class TeamsController < ApplicationController

  def index
    @team = Team.party
  end
  

  
end
