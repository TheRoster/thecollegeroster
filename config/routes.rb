Rails.application.routes.draw do

  devise_for :athletes
  devise_scope :devise do
    match "sign_out", :to => "sessions#destroy", via: [:delete]
  end

  root 'athletes#index'

  resources :athletes

end
