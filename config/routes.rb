Rails.application.routes.draw do
  get 'pets/:id', to: 'pets#show'
  devise_for :users
  root to: 'pages#home'
  resources :pets, only: [ :index, :create, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
