Rails.application.routes.draw do
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  root "articles#index"
  resources :articles

  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
