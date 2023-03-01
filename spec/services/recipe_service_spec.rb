require 'rails_helper'

RSpec.describe '#recipes' do
  it 'returns JSON response for discover_recipes' do
    json_response_1 = File.read('spec/fixtures/ingredient_search_results.json')
    params = "apples,flour,sugar"
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ignorePantry=true&ingredients=#{params}&number=200&ranking=1")
      .to_return(status: 200, body: json_response_1, headers: {})

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

  it 'returns JSON response for get_recipe' do
    json_response_2 = File.read('spec/fixtures/single_recipe.json')
    query = 18079
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/#{query}/information")
      .to_return(status: 200, body: json_response_2, headers: {})
    results = RecipeService.get_recipe(query)
    
    expect(results).to be_a Hash
    expect(results).to have_key(:instructions)
    expect(results[:instructions]).to be_a String
    expect(results).to have_key(:extendedIngredients)
    expect(results[:extendedIngredients]).to be_a Array
    results[:extendedIngredients].each do |ingredient|
      expect(ingredient).to be_a Hash
      expect(ingredient).to have_key(:id)
      expect(ingredient[:id]).to be_a Integer
      expect(ingredient).to have_key(:name)
      expect(ingredient[:name]).to be_a String
      expect(ingredient).to have_key(:amount)
      expect(ingredient[:amount]).to be_a Float
      expect(ingredient).to have_key(:unit)
      expect(ingredient[:unit]).to be_a String
    end
  end
end