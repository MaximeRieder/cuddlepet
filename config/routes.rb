Rails.application.routes.draw do
  get 'pets/index'
  get 'pets/new'
  get 'pets/create'
  get 'pets/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
