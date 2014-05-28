Beliefs::Application.routes.draw do

  resources :beliefs
  match '/add_believer', to: 'beliefs#add_believer'

  resources :users
  resources :sessions, only: [:create, :destroy, :new]

  root to: 'beliefs#index'

  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new',     via: 'get' 
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/help',  to: 'static_files#help'
  match '/about', to: 'static_files#about'


end
