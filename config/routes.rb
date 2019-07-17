Rails.application.routes.draw do
  # get 'list/show'
  # get 'list/new'
  # get 'list/create'
  # get 'list/edit'
  # get 'list/update'
  # get 'list/delete'
  resources :lists

  # get 'user/show'
  # get 'user/new'
  # get 'user/create'
  # get 'user/edit'
  # get 'user/update'
  # get 'user/delete'
  resources :users, except: :index

  # get 'exhibit/index'
  # get 'exhibit/show'
  resources :exhibits, only: [:index, :show]

  # get 'venue/index'
  # get 'venue/show'
  resources :venues, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
