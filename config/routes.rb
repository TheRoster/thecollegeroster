Rails.application.routes.draw do

  devise_for :athletes

  root 'athletes#new'

  resources :athletes

  get 'welcome', to: 'athletes#new', as: 'welcome'

end
