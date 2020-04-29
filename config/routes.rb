Rails.application.routes.draw do
  resources :contacts
  resources :offers
  resources :tracker
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
