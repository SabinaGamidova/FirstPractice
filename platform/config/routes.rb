Rails.application.routes.draw do
  root to: 'index#home'
  devise_for :clients, controllers: { sessions: "clients/sessions", registrations: "clients/registrations", passwords: "clients/passwords" }
  resources :difficulties
  resources :services, only: [:index]
  resources :urgencies
  resources :comments
  resources :statuses
  resources :specializations
  resources :positions
  resources :addresses
  resources :orders
  resources :employees
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
