Rails.application.routes.draw do
  root to: 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  # get '/users/new', to: 'users#new', as 'new_user'
  post '/users' => 'users#create'
  get 'users/:id' => 'users#show', as: 'user'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/libraries' => 'libraries#index'
  get '/libraries/new' => 'libraries#new', as: 'new_library'
  post '/libraries' => 'libraries#create'
  get '/libraries/:id' => 'libraries#show', as: 'library'

  get '/users/:id/libraries' => 'library_users#index', as: 'user_libraries'
  post '/libraries/:id/users' => 'library_users#create', as: 'library_users'
end
