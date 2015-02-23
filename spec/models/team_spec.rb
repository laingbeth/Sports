require 'rails_helper'

RSpec.describe Team, type: :model do
  it 'is valid with team_full_name, sport and team_id' do
    FactoryGirl.create_list(:team, 1)
  expect(team).to be_valid   
  end
end
