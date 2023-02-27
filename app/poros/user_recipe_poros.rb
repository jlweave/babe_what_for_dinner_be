class UserRecipePoros
  attr_reader :uid,
              :recipe_id,
              :recipe_name
              
  def initialize(data) 
    @uid = data.uid
    @recipe_id = data.recipe_id
    @recipe_name = data.recipe_name
  end
end