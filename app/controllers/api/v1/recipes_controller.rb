class Api::V1::RecipesController < ApplicationController
  def index
    render json: RecipeSerializer.new(Recipe.all)
    require 'pry'; binding.pry
  end
  
  def show
    # @recipes = RecipeFacade.search_recipe(params[:name])
    render json: RecipeSerializer.new(Recipe.find(params[:id]))
  end
end