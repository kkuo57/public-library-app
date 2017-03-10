Rails.application.routes.draw do
  root to: 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  # get '/users/new', to: 'users#new', as 'new_user'
  post '/users' => 'users#create'
  get 'users/:id' => 'users#show', as: 'user'

end