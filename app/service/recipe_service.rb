class RecipeService
  def self.conn
    conn = Faraday.new(url:'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com') do |faraday|
      faraday.headers[X-RapidAPI-Key]  = ENV['dinner_api_key']
  end

  def self.recipe_response(term)
    response = conn.get('/recipes')
    data = JSON.parse(response.body, symbolize_names: true)
  end
end