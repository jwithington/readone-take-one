Rails.application.routes.draw do
  get 'sessions/new'

  resources :feeds

 # Boostrap default root
 # resources :users
 # root to: 'visitors#index'
 
 # in hartl they'd do
 resources :users
 root 'users#index'
end
