Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
end
