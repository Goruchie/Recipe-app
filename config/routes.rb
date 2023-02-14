Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]

  devise_for :users
  root to: "foods#index"

end
