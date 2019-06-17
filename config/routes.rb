Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :edit]
  resources :conversations, only: [:create, :show]

  root to: 'users#index'
end
