Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get "restaurants", to: "restaurant#index"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/38/reviews/new", to: "review#new"
  # post "restaurants/38/reviews", to: "review#create"
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show"
  get "restaurants/:id/reviews/new", to: "review#new"
  post "restaurants/:id/reviews", to: "review#create"

  # resources :restaurants do
  #   resources :reviews
  #   collection do
  #     get "new"
  #   end
  # end

end
