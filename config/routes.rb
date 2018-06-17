Rails.application.routes.draw do
  get '/reserve', to: 'reserves#index'
  get '/reserve/new', to: 'reserves#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'sessions#new'

  resources :users
  resources :facilities
end
