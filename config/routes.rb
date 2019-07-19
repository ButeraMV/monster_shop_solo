Rails.application.routes.draw do
  get 'cart/index'
  get 'merchants/index'
  root 'welcome#index'
  get 'welcome/index'
  get '/register' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :items
  resources :merchants
  resources :cart
end
