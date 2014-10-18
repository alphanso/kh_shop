Rails.application.routes.draw do
  concern :contactable do
    resources :contacts
  end

  shallow do
    resources :users do
      resources :chain_of_stores do
        resources :stores do
          resources :addresses
          concerns :contactable
        end
        concerns :contactable
      end
    end
  end

  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
