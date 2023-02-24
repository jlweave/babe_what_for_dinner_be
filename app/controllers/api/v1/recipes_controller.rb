class Api::V1::RecipesController < ApplicationController
  def index
    recipe_info = RecipeFacade.search_recipe(params[:ingredients])
    render json: RecipeSerializer.new(recipe_info)
  end
  
  def show
    #  query = params[:q]
    # term = RecipeFacade(query)
    render json: RecipeSerializer.new(Recipe.find(params[:id]))
  end
end