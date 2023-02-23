class RecipeSerializer
  include JSONAPI::Serializer
    attributes :title, :ingredient
end
