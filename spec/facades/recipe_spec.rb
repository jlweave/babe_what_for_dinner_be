require 'rails_helper'

RSpec.describe 'RecipeFacade' do
  it 'returns a recipe' do
    json_response = File.read('spec/fixtures/single_recipe.json')
    term = 18079
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/#{term}/information")
      .to_return(status: 200, body: json_response, headers: {})
    recipe = RecipeFacade.single_recipe(term)

    expect(recipe).to be_a Recipe
    expect(recipe.title).to be_a String
    expect(recipe.id).to be_a Integer
    expect(recipe.image).to be_a String
    expect(recipe.instructions).to be_a String
    expect(recipe.ready_in_minutes).to be_a Integer
    expect(recipe.ingredients).to be_a Array
    recipe.ingredients.each do |ingredient|
      expect(ingredient).to be_a Hash
      expect(ingredient).to have_key(:name)
      expect(ingredient[:name]).to be_a String
      expect(ingredient).to have_key(:amount)
      expect(ingredient[:amount]).to be_a Float
      expect(ingredient).to have_key(:unit)
      expect(ingredient[:unit]).to be_a String
    end
  end
end