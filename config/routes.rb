Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'welcome/index'
  resources :posts do
    resources :comments
  end
end
