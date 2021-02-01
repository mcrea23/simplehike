Rails.application.routes.draw do
  root 'parks#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :hikers 
resources :trails 
resources :parks 
resources :reviews 

get '/signup', to: 'hikers#new', as: 'signup'
post '/signup', to: 'hikers#create' 
get '/login', to: 'sessions#new', as: 'login'
post '/login', to: 'sessions#create' 

delete '/logout', to: "sessions#destroy", as: "destroy_user_sessions"
end
