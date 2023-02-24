class Api::V1::RecipesController < ApplicationController
  def search
    recipe_info = DiscoverFacade.search_recipe(params[:ingredients])
    render json: DiscoverSerializer.new(recipe_info)
  end

  def show
    query = params[:id]
    recipe = RecipeFacade.single_recipe(query)
    render json: RecipeSerializer.new(recipe)
  end
end