Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]
  resources :recipes do
    resources :recipes_food, only: [:create, :destroy]
  end
  delete '/recipes/:id', to: 'recipes#destroy', as: 'delete_recipe'

  devise_for :users
  root to: "foods#index"

end
