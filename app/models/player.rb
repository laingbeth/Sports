class Player < ActiveRecord::Base
  has_many :users

  def self.search(team_name)
    @team = team_name
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams=#{team_name}&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @player_data = JSON.parse(response.body)
  end

  # validates :player_full_name, presence: true, length: { minimum: 10, maximum: 99 }
  # validates :salary, presence: true

end
