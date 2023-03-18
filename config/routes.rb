Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # custome routes
  # http verb, url, controller#action
  # get "/books", to: "books#index"
  # get "/books/:id", to: "books#show"


  # resource
  resources :books, only: [:index, :show, :create]
end
