Rails.application.routes.draw do

  root 'athletes#new'

  resources :athletes do
    member do
        get :fans, :follows
    end
    resources :stats, shallow: true
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]

  get '/signup',  to: 'athletes#new',  as: 'signup'
  get '/login', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout

  get 'welcome', to: 'athletes#new', as: 'welcome'

end
