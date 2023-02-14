Rails.application.routes.draw do
  # resources :users
  resources :foods, only: [:new, :create, :destroy]

  devise_for :users
  root to: "foods#index"
  # get '/foods', to: 'foods#create', as: 'food_create'
  # get '/foods/new', to: 'foods#new', as: 'food_new'
  
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  

end
