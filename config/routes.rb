Rails.application.routes.draw do
  root to: 'homes#index'
  get "ntf" => "nfts#firstGacha", as:"first_gacha"
  get 'buys/index'

  get 'login' => 'users#login'
  resources :users
  resources :nfts
  post "vote/:id" => "votes#create", as: "vote"
  resources :votes, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
