require 'rails_helper'

describe UsersController, type: :controller do

  describe 'GET #index' do
    it 'renders index' do # loads the page
      get :index
      expect(response).to render_template(:index)
    end

  end
end