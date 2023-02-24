class DiscoverResult
  attr_reader :id, :image, :name, :missing_ingr, :missing_ingr_count
  def initialize(data)
    @id = data[:id]
    @image = data[:image]
    @name = data[:title]
    @missing_ingr = missing_ingredients(data[:missedIngredients])
    @missing_ingr_count = data[:missedIngredientCount]
  end

  def missing_ingredients(data)
    data.map do |ingr|
      {
        :name => ingr[:name],
        :amount => ingr[:amount],
        :unit => ingr[:unit]
      }
    end
  end
end