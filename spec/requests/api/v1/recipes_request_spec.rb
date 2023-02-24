require 'rails_helper'

describe "Recipe API" do
  before (:each) do
    json_response = File.read('spec/fixtures/ingredient_search_results.json')

    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ingredients=apples%2Cflour%2Csugar&number=200&ignorePantry=true&ranking=1")
      .with(headers: { 'X-RapidAPI-Key' => '4f4fbc3ba2msh745c24cf4e7edbdp13621djsn50bc1816f418', 'X-RapidAPI-Host' => 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com' })
      .to_return(status: 200, body: json_response, headers: {})
  end
  it "returns recipes and the attr" do
    get '/api/v1/recipes?ingredients=apples,flour,sugar'

    expect(response).to be_successful
    recipes = JSON.parse(response.body, symbolize_names: true)
   

    expect(recipes[:data].count).to eq(5)

    recipes[:data].each do |recipe|

    expect(recipe).to have_key(:id)
    
    expect(recipe[:attributes]).to have_key(:title)
    expect(recipe[:attributes][:title]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:ingredient)
    expect(recipe[:attributes][:ingredient]).to be_a(Array)
    end
  end
end