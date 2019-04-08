Rails.application.routes.draw do
  resources :products
  # resources :orders, only: [:index, :create]
  # resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      get '/users/:id', to: 'users#profile'
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'users#show'
      post '/products', to: 'products#create'
      post '/orders', to: 'orders#create'
      get '/orders', to: 'orders#index'
      post '/donate', to: 'payment#payment'
      # get '/profile', to: 'users#profile'
    end
  end

  # get '/current_user',  to: 'application#show'
  
end
