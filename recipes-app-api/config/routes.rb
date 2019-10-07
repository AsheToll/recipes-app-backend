Rails.application.routes.draw do
  resources :ingredients
  resources :foods
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

  get '/recipes', to: 'recipes#index'
  get '/recipes/:id', to: 'recipes#show'
  post '/recipes', to: 'recipes#create'
  patch '/recipes/:id', to: 'recipes#update'
  delete '/recipes/:id', to: 'recipes#destroy'
  
  get '/likes', to: 'likes#index'
  get '/likes/:id', to: 'likes#show'

  get '/ingredients', to: 'ingredients#index'
  get '/ingredients/:id', to: 'ingredients#show'

  get '/foods', to: 'foods#index'
  get '/foods/:id', to: 'foods#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
