class RecipeFacade 
  # def self.all_recipes(term)
  #   data = RecipeService.find_all_recipe(term)
  #   data.map do |recipe_attr|
  #     Recipe.new(recipe_attr)
  #   end
  # end
  
  def self.single_recipe(term)
    data = RecipeService.get_recipe(term)
    Recipe.new(data)
  end
end