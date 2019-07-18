Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lists
      resources :users, except: :index
      resources :exhibits, only: [:index, :show]
      resources :venues, only: [:index, :show]
    end
  end
end
