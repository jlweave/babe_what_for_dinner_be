class Recipe
  attr_reader :id, :title, :ready_in_minutes, :image, :summary, :instructions, :ingredients
  def initialize(data)
    @id = data[:id]
    @title = data[:title]
    @ready_in_minutes = data[:readyInMinutes]
    @image = data[:image]
    @summary = data[:summary]
    @instructions = data[:instructions]
    @ingredients = extended_ingredients(data[:extendedIngredients])
  end

  def extended_ingredients(data)
    data.map do |ingr|
      {
        :name => ingr[:name],
        :amount => ingr[:amount],
        :unit => ingr[:unit]
      }
    end
  end
end