class Team < ActiveRecord::Base
has_many :players

  def self.party 
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams=timberwolves&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @data = JSON.parse(response.body)
  end

  def self.search
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams =#{team}&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @data = JSON.parse(response.body)
  end

end

