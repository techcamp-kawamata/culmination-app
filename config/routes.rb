Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:index, :edit, :update, :show]
  resources :rooms, only: [:new, :create, :edit, :destroy, :update] do
    resources :messages, only: [:index, :create]
  end
end
