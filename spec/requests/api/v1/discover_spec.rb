require 'rails_helper'

RSpec.describe 'RecipeAPI' do
   before(:each) do
    json_response = File.read('spec/fixtures/ingredient_search_results.json')

    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ingredients=apples%2Cflour%2Csugar&number=200&ignorePantry=true&ranking=1")
         .to_return(status: 200, body: json_response, headers: {})
   end

   it "returns recipes that contain ingrediants search by(findByIngredients)" do
    get '/api/v1/recipes/findByIngredients?ingredients=apples,flour,sugar'

    expect(response).to be_successful
    recipes = JSON.parse(response.body, symbolize_names: true)
   

    expect(recipes[:data].count).to eq(5)

    recipes[:data].each do |recipe|
      expect(recipe).to have_key(:id)

      expect(recipe[:attributes]).to have_key(:image)
      expect(recipe[:attributes][:image]).to be_a(String)

      expect(recipe[:attributes]).to have_key(:name)
      expect(recipe[:attributes][:name]).to be_a(String)

      expect(recipe[:attributes]).to have_key(:missing_ingr)
      expect(recipe[:attributes][:missing_ingr]).to be_a(Array)

      expect(recipe[:attributes]).to have_key(:missing_ingr_count)
      expect(recipe[:attributes][:missing_ingr_count]).to be_an(Integer)
    end
   end
end