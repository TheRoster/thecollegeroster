Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'athletes#new'

  resources :athletes
  get 'welcome', to: 'athletes#new', as: 'welcome'

end
