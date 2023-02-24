class RecipeService
  # def self.conn
  #   conn = Faraday.new(url:'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com') do |faraday|
  #     faraday.headers["X-RapidAPI-Key"]  = ENV['dinner_api_key']
  #     faraday.headers["X-RapidAPI-Host"]  = ENV['dinner_host_api_key']
  #   end
  # end

  # def self.recipe_response(term)
  #   # require 'pry'; binding.pry
  #   response = conn.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ignorePantry=true&ingredients=" + self.parse(params) + "&number=200&ranking=1")
  #   # require 'pry'; binding.pry
  #   data = JSON.parse(response.body, symbolize_names: true)
  # end

  def self.recipe_response(params)
    url = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ignorePantry=true&ingredients=" + self.parse(params) + "&number=200&ranking=1"
    conn = Faraday.new(url: 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com') do |faraday|
      faraday.headers["X-RapidAPI-Key"] = '4f4fbc3ba2msh745c24cf4e7edbdp13621djsn50bc1816f418'
      faraday.headers["X-RapidAPI-Host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    end
    response = conn.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.parse(params)
    parsed = params.downcase.gsub(/\s+/, "").gsub(",","%2C")
  end
end