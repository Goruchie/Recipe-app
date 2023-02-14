Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]
  resources :recipes, only: [:index, :new, :create, :show]

  delete '/recipes/:id', to: 'recipes#destroy', as: 'delete_recipe'

  devise_for :users
  root to: "foods#index"

end
