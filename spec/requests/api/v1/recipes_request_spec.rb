require 'rails_helper'

describe "Recipe API" do
  before (:each) do
 json_response = File.read('spec/fixtures/single_recipe.json')
    stub_request(:get, "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/479101/information")
      .to_return(status: 200, body: json_response, headers: {})
  end

  it "returns a recipes show page" do
    get "/api/v1/recipes/479101/information"
    expect(response).to be_successful

    recipe = JSON.parse(response.body, symbolize_names: true)
    expect(recipe[:data]).to have_key(:id)

    expect(recipe[:data]).to have_key(:type)
    expect(recipe[:data][:type]).to eq('recipe')

    expect(recipe[:data][:attributes]).to have_key(:title)
    expect(recipe[:data][:attributes][:title]).to be_a(String)

    expect(recipe[:data][:attributes]).to have_key(:ready_in_minutes)
    expect(recipe[:data][:attributes][:ready_in_minutes]).to be_an(Integer)

    expect(recipe[:data][:attributes]).to have_key(:image)
    expect(recipe[:data][:attributes][:image]).to be_a(String)

    expect(recipe[:data][:attributes]).to have_key(:summary)
    expect(recipe[:data][:attributes][:summary]).to be_a(String)

    expect(recipe[:data][:attributes]).to have_key(:instructions)
    expect(recipe[:data][:attributes][:instructions]).to be_a(String)

    expect(recipe[:data][:attributes]).to have_key(:ingredients)
    recipe[:data][:attributes][:ingredients].each do |ingredient|
      expect(ingredient).to have_key(:name)
      expect(ingredient[:name]).to be_a(String)
      expect(ingredient).to have_key(:amount)
      expect(ingredient[:amount]).to be_a(Float)
      expect(ingredient).to have_key(:unit)
      expect(ingredient[:unit]).to be_a(String)
    end
  end
end