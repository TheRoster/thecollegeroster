Rails.application.routes.draw do

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  root 'athletes#new'

  resources :athletes
  get 'welcome', to: 'athletes#new', as: 'welcome'

end
