Rails.application.routes.draw do
  post '/api/v1/login', to: 'api/v1/sessions#create'
  post '/api/v1/signup', to: 'api/v1/accounts#create'
  delete '/api/v1/logout', to: 'api/v1/sessions#destroy'
  get '/api/v1/get_current_account', to: 'api/v1/sessions#get_current_account'
  get 'api/v1/all_foodtrucks', to: 'api/v1/foodtrucks#index'
  namespace :api do
    namespace :v1 do
      resources :accounts do
        resources :foodtrucks
      end
    end
  end
end
