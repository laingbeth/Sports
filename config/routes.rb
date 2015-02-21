Rails.application.routes.draw do
  root to: 'visitors#index'

  #get '/search',      to: 'sports#index'
  #get 'teams',         to: 'teams#index'
  get 'players',       to: 'players#index'
  resources  :teams
end
