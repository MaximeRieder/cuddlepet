Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'
  resources :pets, only: [:index, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
