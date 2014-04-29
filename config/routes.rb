Rails.application.routes.draw do

  root 'athletes#new'

  resources :athletes
  resources :sessions, only: [:new, :create, :destroy]
  get '/signup',  to: 'athletes#new',  as: 'signup'
  get '/login', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout

  get 'welcome', to: 'athletes#new', as: 'welcome'

end
