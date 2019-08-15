Rails.application.routes.draw do
  root to: 'pets#index'
  devise_for :users
  resources :pets, only: [:index, :show, :create, :new] do
    resources :orders, only: [:new, :create]
  end

end
