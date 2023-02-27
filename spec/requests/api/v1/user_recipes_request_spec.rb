require 'rails_helper'

RSpec.describe "User Recipes Favorites" do
  it 'can save a users favorited recipes' do
    post '/api/v1/user_recipes?uid=1234&recipe_id=5678&recipe_name=AppleyApplesauce'

    expect(response).to be_successful

    user_recipe = UserRecipe.last
    expect(user_recipe.uid).to eq("1234")
    expect(user_recipe[:uid]).to be_a(String)

    expect(user_recipe.recipe_id).to eq("5678")
    expect(user_recipe[:recipe_id]).to be_a(String)

    expect(user_recipe.recipe_name).to eq("AppleyApplesauce")
    expect(user_recipe[:recipe_name]).to be_a(String)
  end

  it "can return a json with users saved recipes " do
    user_recipe = UserRecipe.create(uid: '1234', recipe_id: '5678', recipe_name: "Peanut Butter")
    user_recipe = UserRecipe.create(uid: '1234', recipe_id: '8765', recipe_name: "jelly")
    user_recipe = UserRecipe.create(uid: '4567', recipe_id: '1276', recipe_name: "bread")

    get '/api/v1/user_recipes?uid=1234'

    expect(response).to be_successful

    user_recipes = JSON.parse(response.body, symbolize_names: true)

    expect(user_recipes[:data].count).to eq(2)

    user_recipes[:data].each do |user_recipe|

      expect(user_recipe).to have_key(:id)

      expect(user_recipe).to have_key(:type)
      expect(user_recipe[:type]).to eq('user_recipe')

      expect(user_recipe[:attributes]).to have_key(:recipe_name)
      expect(user_recipe[:attributes][:recipe_name]).to be_a(String)
    end
  end
end