class DiscoverFacade
  def self.search_recipe(query)
    data = RecipeService.discover_recipes(query)
    data.map {|recipe| DiscoverResult.new(recipe)}
  end
end