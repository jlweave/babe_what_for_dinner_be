class Recipe
  attr_reader :title, :ingredient, :image, :recipe_id
  
  def initialize(attr)
    @title = attr[:title]
    @ingredient = attr[:usedIngredients].map do |used|
      used[:name]
    end
    @image = attr[:image]
    @recipe_id = attr[:id]
  end
end