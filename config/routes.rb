Rails.application.routes.draw do
  resources :users
  resources :foods, only: [:new, :create, :destroy]

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "foods#index"
  get '/foods', to: 'foods#create', as: 'food_create'
  
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  

end
