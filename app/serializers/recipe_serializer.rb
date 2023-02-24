class RecipeSerializer
  include JSONAPI::Serializer
    set_id {nil}
    attributes :title, :ingredient, :image, :recipe_id
end
