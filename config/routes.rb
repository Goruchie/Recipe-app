Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]
  resources :recipes, only: [:index, :new, :show, :destroy]

  devise_for :users
  root to: "foods#index"

end
