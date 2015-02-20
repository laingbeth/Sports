Rails.application.routes.draw do
  root to: 'visitors#index'

  get '/search',      to: 'sports#index'
end
