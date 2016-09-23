Rails.application.routes.draw do
  root to: 'users#signin'

  resources :users

  post '/signin' => 'sessions#create'
  get '/signout' => 'session#destroy'
end
