Rails.application.routes.draw do
  resources :users, only: %i(index)

  # Defines the root path route ("/")
  root "users#index"
end
