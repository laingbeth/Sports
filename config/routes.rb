Rails.application.routes.draw do
  root to: 'visitors#index'

  #get '/search',      to: 'sports#index'
  #get 'teams',         to: 'teams#index'
  #get 'players',       to: 'players#index'
  resources :teams
  resources :players
  resources :sessions, only: [:create] 
  resources :users, except: [:new]

  get '/signup',      to:  'users#new'
  get '/signin',      to:  'sessions#new'
  delete '/signout',  to:  'sessions#destroy'  
end
