class Api::V1::UserRecipesController < ApplicationController
  def index
    render json: RecipeSerializer.new(UserRecipe.all)
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
      params.require(:user_recipe).permit(:uid, :recipe_id, :recipe_name)
    end
end