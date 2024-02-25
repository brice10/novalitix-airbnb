Rails.application.routes.draw do
  namespace :auth do
    get 'register', to: 'register#new', as: :register
    post 'register', to: 'register#store'
    get 'login', to: 'login#new', as: :login
    post 'login', to: 'login#login'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
