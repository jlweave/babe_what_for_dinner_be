class Api::V1::UserRecipesController < ApplicationController
  def index
    # require 'pry'; binding.pry
    user_recipes = UserRecipe.where(uid: params[:uid])
    render json: RecipeSerializer.new(user_recipes)
  end

  def new
  end

  def create
    user_recipe = UserRecipe.new(user_recipe_params)
    if user_recipe.save 
      render json: UserRecipeSerializer.new(UserRecipe.create(user_recipe_params)), status: 201
    else 
      render json: {errors: "Recipe was not saved to favorites"}, status: 404
    end
  end


  private

    def user_recipe_params
      params.permit(:uid, :recipe_id, :recipe_name)
    end
end