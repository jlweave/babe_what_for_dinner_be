class RecipeService
  def self.discover_recipes(params)
    binding.pry
    response = conn.get("/recipes/findByIngredients?ignorePantry=true&ingredients=#{self.parse(params)}&number=200&ranking=1")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_recipe(query)
    binding.pry
    response = RecipeService.conn.get("/recipes/#{query}/information")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com') do |faraday|
      faraday.headers["X-RapidAPI-Key"] = ENV['recipe_api_key']
      faraday.headers["X-RapidAPI-Host"] = ENV['recipe_api_host']
    end
  end

  def self.parse(params)
    parsed = params.downcase.gsub(/\s+/, "").gsub(",","%2C")
  end
end