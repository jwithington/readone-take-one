Rails.application.routes.draw do
 # Boostrap default root
 # resources :users
 # root to: 'visitors#index'
 
 # in hartl they'd do
 resources :users
 root 'users#index'
end
