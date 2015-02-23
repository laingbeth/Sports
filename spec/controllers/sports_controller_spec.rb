require 'rails_helper'

describe SportsController, type: :controller do

  describe 'GET #index' do
    it 'renders index' do # loads the page
      get :index
      expect(response).to render_template(:index)
    end
    it 'populate a hash of items' do
      get :index
    end  
  end
end