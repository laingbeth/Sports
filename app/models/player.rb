class Player < ActiveRecord::Base
has_many :users

  def self.party 
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?teams=timberwolves&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @player_data = JSON.parse(response.body)
  end

  def self.search
    @search = params[:search]
  end

  validates :player_full_name, presence: true, length: { minimum: 10, maximum: 100 }
  validates :salary, presence: true
  validates :user_id, presence: true
  validates :season, presence: true
  validates :team_full_name, presence: true, length: { minimum: 10, maximum: 100 }  
  validates :position_description, presence: true, length: { minimum: 3, maximum: 100 }
end
