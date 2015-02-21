class TeamsController < ApplicationController

  def index
   @data = Team.party
 end
  

  
end
