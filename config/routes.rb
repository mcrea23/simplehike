Rails.application.routes.draw do

  root 'parks#index' #homepage
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/trails/longest", to: "trails#longest" 
#custom route /controller action method(path)

post "/parks/search", to: "parks#search"

resources :trails do 
  resources :reviews, only: [:new, :create, :index] #nested route
end

resources :parks 
resources :reviews
end