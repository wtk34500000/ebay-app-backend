Rails.application.routes.draw do
  # resources :orders, only: [:index, :create]
  # resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      post '/login', to: 'users#create'
      get '/profile', to: 'users#profile'
    end
  end

  #  get '/', to: 'ebay#create'
   post '/users', to: 'users#create'
   get '/users', to: 'users#index'
end
