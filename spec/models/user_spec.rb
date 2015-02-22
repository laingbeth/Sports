require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should include name, email and password' do
    FactoryGirl.create_list(:player, 1)
  end

end

