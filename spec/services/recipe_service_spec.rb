require 'rails_helper'

RSpec.describe '#recipes' do
  before :each do
    json_response = File.read('spec/fixtures/ingredient_search_results.json')
 
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ignorePantry=true&ingredients=apples,flour,sugar&number=200&ranking=1")
        #  .with(
        #    headers: {
        #   'X-Rapidapi-Host'=>"#{ENV['recipe_api_host']}",
        #   'X-Rapidapi-Key'=>"#{ENV['recipe_api_key']}"
        #    })
         .to_return(status: 200, body: json_response, headers: {})
        end 
       
  it 'returns JSON for response' do
    params = "apples,flour,sugar"
    results = RecipeService.discover_recipes(params)
    
    expect(results).to be_a Array
    results.each do |result|
      expect(result).to have_key(:title)
      expect(result[:title]).to be_a String
      expect(result).to have_key(:usedIngredientCount)
      expect(result[:usedIngredientCount]).to be_a Integer
      expect(result).to have_key(:missedIngredientCount)
      expect(result[:missedIngredientCount]).to be_a Integer
      expect(result).to have_key(:missedIngredients)
      expect(result[:missedIngredients]).to be_a Array
      result[:missedIngredients].each do |ingredients|
        expect(ingredients).to be_a Hash
        expect(ingredients).to have_key(:amount)
        expect(ingredients[:amount]).to be_a Float
      end
    end
  end
end