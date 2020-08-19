Rails.application.routes.draw do
   namespace :api do
    namespace :v1 do
      resources :sites, only: [:index, :create]
      resources :items, only: [:index, :create]
      resources :days, only: [:index, :create]
    end
  end
end

