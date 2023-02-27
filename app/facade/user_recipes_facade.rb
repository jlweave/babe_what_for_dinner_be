class UserRecipesFacade 
  def self.get_recipes(collection)
    collection.map { |recipe| UserRecipePoros.new(recipe) }
  end
end