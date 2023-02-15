Rails.application.routes.draw do
  resources :foods, only: [:new, :create, :destroy]
  resources :recipes, only: [:new, :show, :create, :destroy] do
    resources :recipes_food, only: [:create, :destroy, :update]
  end
  get '/foods', to: 'foods#index', as: 'foods_index'
  get '/public_recipes', to: 'recipes#public', as: 'public_recipes'
  delete '/recipes/:id', to: 'recipes#destroy', as: 'delete_recipe'
  match '/recipes/:id' => 'recipes#toggle_public', as: :toggle_public, via: :patch

  devise_for :users
  root to: "foods#index"

end
