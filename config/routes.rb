Rails.application.routes.draw do
  post '/register', to: 'api/v1/account_controller#create'
  namespace :api do
    namespace :v1 do
      resources :accounts do
        resources :food_trucks
      end
    end
  end
end
