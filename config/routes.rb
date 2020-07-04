Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  root to: 'home#index'
  get "/home/about"

  # devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_for :users
  resources :users, :only => [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
