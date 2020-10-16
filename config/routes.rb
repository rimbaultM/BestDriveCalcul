Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :standards, only: [:index, :new, :create]
  resources :etroites, only: [:index, :new, :create]
  resources :answer, only: :index
  resources :answer2, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
