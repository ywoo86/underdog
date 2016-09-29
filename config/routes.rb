Rails.application.routes.draw do
  root to: 'matchups#index'

  resources :users
  resources :matchups
  resources :picks

  post '/signin' => 'sessions#create'
  post '/signout' => 'session#destroy'
end
