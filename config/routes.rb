 #
 Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics, only: [:index, :show]
  resources :nodes, only: [:show]
  resources :users, only: [:show, :create]
  get 'sign_up', to: 'users#new'
end