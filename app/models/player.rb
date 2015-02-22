class Player < ActiveRecord::Base
has_many :users

  def self.party 
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams=timberwolves&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @player_data = JSON.parse(response.body)
  end

  
end
