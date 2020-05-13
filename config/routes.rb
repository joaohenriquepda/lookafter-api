Rails.application.routes.draw do

  resources :contacts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'

end
