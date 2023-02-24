class RecipeSerializer
  include JSONAPI::Serializer
    set_id {nil}
    attributes :title, :ingredients, :image, :recipe_id
end
