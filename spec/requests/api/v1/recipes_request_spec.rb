require 'rails_helper'

describe "Recipe API" do
  before (:each) do
    json_response = File.read('spec/fixtures/ingredient_search_results.json')

    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ingredients=apples%2Cflour%2Csugar&number=200&ignorePantry=true&ranking=1")
      .with(headers: { 'X-RapidAPI-Key' => ENV['recipe_api_key'], 'X-RapidAPI-Host' => ENV['recipe_api_host'] })
      .to_return(status: 200, body: json_response, headers: {})

 json_response = File.read('spec/fixtures/single_recipe.json')
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/479101/information")
      .with(headers: { 'X-RapidAPI-Key' => ENV['recipe_api_key'], 'X-RapidAPI-Host' => ENV['recipe_api_host'] })
      .to_return(status: 200, body: json_response, headers: {})
  end
 
  it "returns recipes that contain ingrediants search by(findByIngredients)" do
    get '/api/v1/recipes/findByIngredients?ingredients=apples,flour,sugar'

    expect(response).to be_successful
  #   recipes = JSON.parse(response.body, symbolize_names: true)
   

  #   expect(recipes[:data].count).to eq(5)

  #   recipes[:data].each do |recipe|

  #   expect(recipe).to have_key(:id)
    
  #   expect(recipe[:attributes]).to have_key(:title)
  #   expect(recipe[:attributes][:title]).to be_a(String)

  #   expect(recipe[:attributes]).to have_key(:ingredients)
  #   expect(recipe[:attributes][:ingredients]).to be_a(Array)
  #   end
   end

  it "returns a recipes show page" do
    get "/api/v1/recipes/479101/information"
  end
end