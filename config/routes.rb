Rails.application.routes.draw do

  root 'athletes#new'

  resources :athletes
  get 'welcome', to: 'athletes#new', as: 'welcome'

end
