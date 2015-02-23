class SportsController < ApplicationController
  def index
    @list_data = Sport.party
    @metadata = @list_data['rootmetadata'][0]
    @salaries = @list_data['salaries'][0]
  end
end
