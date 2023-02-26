class UserRecipeSerializer
  include JSONAPI::Serializer
    attributes :uid, :recipe_id, :recipe_name
end