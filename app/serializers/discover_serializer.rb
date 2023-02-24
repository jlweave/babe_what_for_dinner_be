class DiscoverSerializer
  include JSONAPI::Serializer
  attributes :id, :image, :name, :missing_ingr, :missing_ingr_count
end
