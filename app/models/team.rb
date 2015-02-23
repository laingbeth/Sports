class Team < ActiveRecord::Base
  has_many :players

  def self.party
    response = HTTParty.get 'http://api.usatoday.com2/open/salaries/nba?teams=timberwolves&year=2014&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg'
    @data = JSON.parse(response.body)
  end

  def self.search(team_name)
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams=#{team_name}&year=2014&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @data = JSON.parse(response.body)
  end
end
