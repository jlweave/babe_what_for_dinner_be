class RecipeFacade 
  # def self.all_recipes(term)
  #   data = RecipeService.find_all_recipe(term)
  #   data.map do |recipe_attr|
  #     Recipe.new(recipe_attr)
  #   end
  # end
  
  def self.search_recipe(term)
    data = RecipeService.recipe_response(term)
    data.map do |recipe_attr|
      Recipe.new(recipe_attr)
    end
  end

  def self.single_recipe(query)
      # binding.pry
      recipe = RecipeService.get_single_recipe(query)
      # binding.pry
      Recipe.new(recipe)
  end
end