FactoryBot.define do
  factory :recipe do
    title {Faker::Food.dish}
    ingredient {Faker::Food.ingredient}
  end
end