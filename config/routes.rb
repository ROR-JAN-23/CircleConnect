Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  # get "follow/:id" to: "follows#follow"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#show', as: 'users'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'welcome/index'
  resources :follows
  resources :stories
  resources :posts do
    resources :comments
  end
  resources :poly_comments
  get '/polycomments/new/:id', to: 'poly_comments#new', as: 'reply'
  put '/post/:id/like', to: 'posts#like', as: 'like'
  get '/post/:id/like/:id', to: 'posts#destroy_like', as: 'destroy_like'
  put '/post/:id/complain', to: 'posts#complain', as: 'complain'
  get 'users/:id', to: 'users#show', as: 'show_users'
  delete 'users/users/:id', to: 'users#destroy', as: 'destroy_user'
  resources :follows
end
