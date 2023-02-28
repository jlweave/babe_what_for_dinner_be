require 'rails_helper'

RSpec.describe "discover_result" do
  it 'exists with attributes' do
    data = {
      image: "https://wwwflickeringmythc3c8f7.zapwp.com/q:i/r:0/wp:1/w:600/u:https://cdn.flickeringmyth.com/wp-content/uploads/2019/07/YoungEinstein_0002-600x391.jpg",
      title: "Stir Fry Broccoli",
      missedIngredientCount: 1489,
      missedIngredients: [ {name: "soy sauce", amount: 1.0, unit: "cup"}, {name: "Sesame Seets", amount: 2.2, unit: "oz"} ]
    }
    result = DiscoverResult.new(data)

    expect(result).to be_a DiscoverResult
    expect(result.name).to eq "Stir Fry Broccoli"
    expect(result.image).to be_a String
    expect((result.missing_ingr).count).to eq 2
    expect(result.missing_ingr_count).to eq 1489
  end
end