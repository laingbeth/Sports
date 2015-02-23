class Sport < ActiveRecord::Base
  has_many :Teams

  def self.party
    response = HTTParty.get 'http://api.usatoday.com/open/salaries/nba?year=2014&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg'
    @list_data = JSON.parse(response.body)
  end
end
