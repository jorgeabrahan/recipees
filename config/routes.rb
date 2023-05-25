Rails.application.routes.draw do
  root "foods#index"
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :new, :create, :show, :destroy]
  get '/public_recipes', to: 'recipes#public_recipes'
end
