Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :new]
  resources :conversations, only: [:create, :show] do
    resources :messages, only: [:create]
  end

  root to: 'users#index'
end
