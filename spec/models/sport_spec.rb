require 'rails_helper'

RSpec.describe Sport, type: :model do
  it 'is valid with league and sport_name' do
    FactoryGirl.create_list(:player, 1)
  end
end
