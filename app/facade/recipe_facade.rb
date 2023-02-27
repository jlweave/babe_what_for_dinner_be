class RecipeFacade 
  def self.single_recipe(term)
    data = RecipeService.get_recipe(term)
    Recipe.new(data)
  end
end