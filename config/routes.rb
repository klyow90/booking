Rails.application.routes.draw do
  get '/reservation', to: 'reservations#index'
  get '/reservation/new', to: 'reservations#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'sessions#new'

  resources :users
  resources :facilities
end
