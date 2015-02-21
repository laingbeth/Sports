class TeamsController < ApplicationController

  def index
   @data = Team.party
   @metadata = @data['rootmetadata'][0]
   @salaries = @data['salaries'][0]
 end
  

  
end
