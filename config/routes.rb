Rails.application.routes.draw do
  resources :sessions

  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :blogs do
    resources :comments
  end
end

