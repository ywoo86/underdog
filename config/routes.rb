Rails.application.routes.draw do
  root to: 'teams#index'

  resources :users
  resources :matchups
  resources :picks

  post '/signin' => 'sessions#create'
  get '/signout' => 'session#destroy'
end
