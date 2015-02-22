require 'rails_helper'

RSpec.describe Sport, type: :model do
  it 'sends a list of players' do
    FactoryGirl.create_list(:player, 1)
  end

end
