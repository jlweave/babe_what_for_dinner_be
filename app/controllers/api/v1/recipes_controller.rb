class Api::V1::RecipesController < ApplicationController
  # def index
  # #  require 'pry'; binding.pry
  #   recipe = RecipeFacade.all_recipes(params[:id])
  #   render json: RecipeSerializer.new(recipe)
  # end

  def search
    recipe_info = RecipeFacade.search_recipe(params[:ingredients])
    render json: RecipeSerializer.new(recipe_info)
  end
  
  def show
    query = params[:id]
    recipe = RecipeFacade.single_recipe(query)
    render json: RecipeSerializer.new(query)
  end
end