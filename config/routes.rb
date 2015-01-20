Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'sessions/new'

  resources :feeds

 # Boostrap default root
 # resources :users
 # root to: 'visitors#index'
 
 # in hartl they'd do
 resources :users
 root 'sessions#new'
 
 #from hartl chap 8 on logins
 get    'signup'  => 'users#new'
 get    'login'   => 'sessions#new'
 post   'login'   => 'sessions#create'
 delete 'logout'  => 'sessions#destroy'
end
