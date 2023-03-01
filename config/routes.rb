Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/recipes/findByIngredients', to: 'recipes#search'
      get '/recipes/:id/information', to: 'recipes#show'
      get '/user_recipes', to: 'user_recipes#index'
      post '/user_recipes', to: 'user_recipes#create'
      delete '/user_recipes/:id', to: 'user_recipes#destroy'
    end
  end

end
