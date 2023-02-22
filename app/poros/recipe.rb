class Recipe
  attr_reader :name
  def initialize(attr)
    @name = attr[:name]
  end
end