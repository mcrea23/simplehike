Rails.application.routes.draw do
  root 'parks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :hikers 
resources :trails 
resources :parks 
resources :reviews 
end
