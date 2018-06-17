Rails.application.routes.draw do
  get '/reservation', to: 'reservations#index'
  get '/reservation/new', to: 'reservations#new'
  post '/reservation/create', to: 'reservations#create'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'sessions#new'

  resources :users
  resources :facilities
  resources :reservations
end
