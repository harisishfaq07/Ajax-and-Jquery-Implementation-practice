Rails.application.routes.draw do
  resources :trips
  resources :cars
  devise_for :users
  resources :tickets
  resources :events
  resources :books do
    post :check
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles
  resources :categories
  resources :comments
  # get "dash" , to: "welcome#dash"
  root "welcome#wel"
  get "dash" , to: "welcome#dash"
  get "index" , to: "weather#index"
end
