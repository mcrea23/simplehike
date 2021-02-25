Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'parks#index' #homepage

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/trails/longest", to: "trails#longest" #custom route

resources :trails do 
  resources :reviews #nested 
end

resources :parks 
resources :reviews 
end
