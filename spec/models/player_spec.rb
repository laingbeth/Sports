require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) do
    Player.new
    player_full_name 'LeBron James'
    salary 12, 000, 000
    position_desc 'center'
    team_full_name 'Cleveland Cavaliers'
    season 2013
    user_id 1
  end

  subject { player }

  it { should respond_to(:player_full_name) } # item.name returns anything but an error
  it { should respond_to(:salary) }
  it { should respond_to(:position_desc) }
  it { should respond_to(:team_full_name) }
  it { should respond_to(:season) }
  it { should respond_to(:user_id) }

  it { should be_valid } # It passes all validations

  describe 'validations' do
    describe 'player_full_name' do
      context 'not present' do
        before { item.name = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { item.name = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'too long' do
        before { item.name = 'a' * 102 }
        it { should_not be_valid }
      end
    end

    describe 'salary' do
      context 'not present' do
        before { item.price = nil }
        it { should_not be_valid }
      end
    end
  end
end
