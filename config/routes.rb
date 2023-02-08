Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/update'
  get 'comments/delete'
  root "posts#index"

  get "users", to: "users#index"
  get ":username", to: "users#show", as: "user"
  get ":username/edit", to: "users#edit"
  resources :posts

  devise_for :users
end
