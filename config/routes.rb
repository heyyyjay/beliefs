Beliefs::Application.routes.draw do
  resources :users
  resources :sessions

  root to: 'static_files#home'

  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new',     via: 'get' 
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/help',  to: 'static_files#help'
  match '/about', to: 'static_files#about'


end
