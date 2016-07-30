Rails.application.routes.draw do

  get 'attractions/index'

#  get 'users/new'
#  get 'users/create'
#  get 'users/edit'
#  get 'users/update'
#  get 'users/destroy'
#  get 'users/show'
#  get 'users/index'
#  get 'sessions/new'
#  get 'sessions/create'
#  get 'sessions/destroy'

  ##########

  root 'application#home' 

  resources :users
  resources :sessions, only: [:create, :delete]
  resources :attractions
  resources :rides

  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

end