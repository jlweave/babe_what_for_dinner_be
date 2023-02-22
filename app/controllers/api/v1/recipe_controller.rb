class Api::V1::RecipeController < ApplicationController
  def index
    @recipes = RecipeFacade.search_recipe(params[:name])
  end
end