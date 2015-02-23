class TeamsController < ApplicationController
  def index
    @team = params[:team_name]
    @data = Team.search(@team)
    @metadata = @data['rootmetadata'][0]
    @salaries = @data['salaries'][0]
 end
end
