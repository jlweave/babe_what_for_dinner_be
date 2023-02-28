require 'rails_helper'

RSpec.describe 'discover' do
  it 'returns a list of recipes containing ingredients passed in' do
    json_response = File.read('spec/fixtures/ingredient_search_results.json')
    query = 'apples,flour,sugar'
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ignorePantry=true&ingredients=#{query}&number=200&ranking=1")
      .to_return(status: 200, body: json_response, headers: {})

    recipes = DiscoverFacade.search_recipe(query)
    
    
    expect(recipes).to be_a Array
    recipes.each do |recipe|
      expect(recipe).to be_a DiscoverResult
      expect(recipe.name).to be_a String
      expect(recipe.id).to be_a Integer
      expect(recipe.image).to be_a String
      expect(recipe.missing_ingr).to be_a Array
    end
  end
end