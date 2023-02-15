Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]
  resources :recipes, only: [:new, :show, :index, :create, :destroy] do
    resources :recipes_food, only: [:create, :destroy, :update]
  end

  resources :inventories, only: [:new, :show, :index, :create] do
    resources :inventory_food, only: [:create, :destroy, :update]
  end
  
  get '/foods', to: 'foods#index', as: 'foods_index'
  get '/public_recipes', to: 'recipes#public', as: 'public_recipes'
  delete '/recipes/:id', to: 'recipes#destroy', as: 'delete_recipe'
  delete '/inventories/:id', to: 'inventories#destroy', as: 'delete_inventory'
  delete '/recipes/:recipe_id/recipes_food/:id', to: 'recipes_food#destroy', as: 'delete_recipe_food'
  match '/recipes/:id' => 'recipes#toggle_public', as: :toggle_public, via: :patch

  devise_for :users
  root to: "recipes#public"

end
