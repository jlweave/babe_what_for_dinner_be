class RecipeFacade 
  def self.search_recipe(term)
    # require 'pry';binding.pry
    data = RecipeService.recipe_response(term)
    # require 'pry'; binding.pry
    data.map do |recipe_attr|
      # require 'pry'; binding.pry
      Recipe.new(recipe_attr)
      # require 'pry'; binding.pry
    end
  end

end