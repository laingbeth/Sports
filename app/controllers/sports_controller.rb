class SportsController < ApplicationController

  def search
    @sport = Sport.search
  end
end
