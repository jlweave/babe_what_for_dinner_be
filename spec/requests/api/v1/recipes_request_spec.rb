require 'rails_helper'

describe "Recipe API" do
  it"returns recipes and the attr" do
    create_list(:recipe, 3)

    get '/api/v1/recipes'

    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes[:data].count).to eq(3)

    recipes[:data].each do |recipe|

    expect(recipe).to have_key(:id)
    expect(recipe[:id]).to be_a(String)
    
    expect(recipe[:attributes]).to have_key(:title)
    expect(recipe[:attributes][:title]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:ingredient)
    expect(recipe[:attributes][:ingredient]).to be_a(String)
    end
  end
end