Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/recipes/findByIngredients', to: 'recipes#search'
      get '/recipes/:id/information', to: 'recipes#show'
     
    end
  end

end
