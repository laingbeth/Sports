require 'rails_helper'

  describe User do 
    it 'is valid with a name, email and password' do  
     FactoryGirl.create_list(:user, 1)
    expect(user).to be_valid 
    end
  end
    
