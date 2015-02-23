require 'rails_helper'

RSpec.describe Team, type: :model do
  it 'sends a list of teams' do
    FactoryGirl.create_list(:team, 1)
  end
end
