Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/delete'
  root "posts#index"

  # Users Paths
  devise_for :users
  get "users", to: "users#index"
  get ":username", to: "users#show", as: "user"
  get ":username/edit", to: "users#edit", as: "user_edit"
  get ":username/about", to: "users#about", as: "user_about"
  patch ":username", to: "users#update", as: "user_update"
  delete ":username", to: "users#destroy", as: "user_destroy"

  resources :posts do
    resources :comments, only: [:create, :update, :delete]
  end
end
