# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :follows
  resources :stories
  resources :posts
  resources :poly_comments
  root 'homes#index'
  get '/users',                to: 'users#show',         as: 'users'
  get '/polycomments/new/:id', to: 'poly_comments#new',  as: 'reply'
  put '/post/:id/like',        to: 'posts#like',         as: 'like'
  get '/post/:id/like/:id',    to: 'posts#destroy_like', as: 'destroy_like'
  put '/post/:id/complain',    to: 'posts#complain',     as: 'complain'
  get 'users/:id',             to: 'users#show',         as: 'show_users'
  delete 'users/users/:id',    to: 'users#destroy',      as: 'destroy_user'
  get 'history',               to: 'users#history',      as: 'history'
end
