require 'rails_helper'

RSpec.describe "recipe" do
  it 'exists with attributes' do
    data = {
      title: "Porridge",
      readyInMinutes: 17,
      image: "https://i.redd.it/la2smkdhbvja1.jpg",
      summary: "See Oliver Twist",
      instructions: "Order out instead of cooking this. Seriously, you'll thank me",
      extendedIngredients: [ {name: "raisens", amount: 5.0, unit: "tsp"}, {name: "oats", amount: 1.8, unit: "jars"}, {name: "water", amount: 9.0, unit: "drops"}  ]
    }
    result = Recipe.new(data)
    
    expect(result).to be_a Recipe
    expect(result.title).to eq "Porridge"
    expect(result.ready_in_minutes).to eq 17
    expect(result.image).to be_a String
    expect(result.summary).to be_a String
    expect(result.instructions).to be_a String
    expect(result.ingredients).to be_a Array
    expect(result.ingredients.count).to eq 3
    result.extended_ingredients(data[:extendedIngredients]).each do |ingredient|
      expect(ingredient.count).to eq 3
      expect(ingredient).to be_a Hash
      expect(ingredient[:name]).to be_a String
      expect(ingredient[:amount]).to be_a Float
      expect(ingredient[:unit]).to be_a String
    end
  end
end