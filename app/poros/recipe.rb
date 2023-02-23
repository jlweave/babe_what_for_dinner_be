class Recipe
  attr_reader :name, :ingredient
  def initialize(attr)
    @title = attr[:title]
    @ingredient = attr[:ingredient]
  end
end