Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'parks#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :trails do 
  resources :reviews 
end
resources :parks 
resources :reviews 

# get '/login', to: 'sessions#new', as: 'login'
# post '/login', to: 'sessions#create' 

# delete '/logout', to: "sessions#destroy", as: "destroy_user_sessions"
end
