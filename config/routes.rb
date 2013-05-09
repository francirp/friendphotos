Friendphotos::Application.routes.draw do
  root :to => 'static#index'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')

  get '/sign_in' => 'sessions#new', :as => 'sign_in'
  get '/sign_out' => 'sessions#destroy', :as => 'sign_out'


  # Routes for the Friend resource:
  # CREATE
  # get '/friends/new', controller: 'friends', action: 'new', as: 'new_friend'
  # post '/friends', controller: 'friends', action: 'create'

  # READ
  get '/friends', controller: 'friends', action: 'index', as: 'friends'
  # get '/friends/:id', controller: 'friends', action: 'show', as: 'friend'

  # UPDATE
  # get '/friends/:id/edit', controller: 'friends', action: 'edit', as: 'edit_friend'
  # put '/friends/:id', controller: 'friends', action: 'update'

  # DELETE
  # delete '/friends/:id', controller: 'friends', action: 'destroy'
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  # get '/photos/new', controller: 'photos', action: 'new', as: 'new_photo'
  # post '/photos', controller: 'photos', action: 'create'

  # READ
  get '/photos', controller: 'photos', action: 'index', as: 'photos'
  # get '/photos/:id', controller: 'photos', action: 'show', as: 'photo'

  # UPDATE
  # get '/photos/:id/edit', controller: 'photos', action: 'edit', as: 'edit_photo'
  # put '/photos/:id', controller: 'photos', action: 'update'

  # DELETE
  # delete '/photos/:id', controller: 'photos', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  # get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  # post '/users', controller: 'users', action: 'create'

  # READ
  # get '/users', controller: 'users', action: 'index', as: 'users'
  # get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  # get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  # put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  # delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------
end
