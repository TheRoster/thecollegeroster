Rails.application.routes.draw do

  root 'athletes#new'

  resources :athletes
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout
  # post '/sessions', to: 'sessions#create'


  get 'welcome', to: 'athletes#new', as: 'welcome'

end
