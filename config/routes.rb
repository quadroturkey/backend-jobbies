Rails.application.routes.draw do
  resources :contact
  resources :offer
  resources :trackers
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
