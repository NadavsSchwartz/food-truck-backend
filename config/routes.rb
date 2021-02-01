Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :food_trucks
      resources :accounts
    end
  end

end
