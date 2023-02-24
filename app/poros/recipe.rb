class Recipe
  attr_reader :title, :ingredients, :image, :recipe_id
  
  def initialize(attr)
    @title = attr[:title]
    @ingredients = attr[:extendedIngredients].map {|ingredient| ingredient[:nameClean]}
    @image = attr[:image]
    @recipe_id = attr[:id]
  end
end