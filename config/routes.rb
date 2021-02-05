Rails.application.routes.draw do
  post '/api/v1/login', to: 'api/v1/sessions#create'
  post '/api/v1/signup', to: 'api/v1/accounts#create'
  delete '/api/v1/logout', to: 'api/v1/sessions#destroy'
  get '/api/v1/get_current_account', to: 'api/v1/sessions#get_current_account'
  namespace :api do
    namespace :v1 do
      resources :accounts do
        resources :food_trucks
      end
    end
  end
end
