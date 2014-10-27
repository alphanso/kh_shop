Rails.application.routes.draw do

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users

  shallow do
    resources :users do
      resources :stores do
        resources :addresses
      end
    end
  end
  get '/privacy' => 'visitors#privacy'
  get '/terms' => 'visitors#terms'
end
