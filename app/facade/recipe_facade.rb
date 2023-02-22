class RecipeFacade 
  def self.seach_recipe(term)
    data = RecipeService.recipe_response(term)
    data[:data].map do |recipe_attr|
    Recipe.new(recipe_attr)
  end

end