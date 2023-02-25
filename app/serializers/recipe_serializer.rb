class RecipeSerializer
  include JSONAPI::Serializer
    attributes :id, :title, :ready_in_minutes, :image, :summary, :instructions, :ingredients
end
