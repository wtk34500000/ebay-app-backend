Rails.application.routes.draw do
  # resources :orders, only: [:index, :create]
  # resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'users#show'
      # get '/profile', to: 'users#profile'
    end
  end

  # get '/current_user',  to: 'application#show'
  
end
