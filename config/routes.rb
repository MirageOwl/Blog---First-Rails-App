Rails.application.routes.draw do
  get 'sessions/new'

  # Set root page
  root 'articles#index'
  # Configure request routes
  get 'user/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # Configure resource routes
  resources :articles do
    resources :comments
  end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
