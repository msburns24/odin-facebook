Rails.application.routes.draw do
  root "posts#index"

  devise_for :users
  get "users", to: "users#index"
  get ":username", to: "users#show", as: "user"
  get ":username/edit", to: "users#edit", as: "user_edit"
  get ":username/about", to: "users#about", as: "user_about"

  resources :posts do
    resources :comments, only: [:create, :update, :delete]
  end
end
