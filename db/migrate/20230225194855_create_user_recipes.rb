class CreateUserRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_recipes do |t|
      t.string :uid
      t.string :recipe_id
      t.string :recipe_name

      t.timestamps
    end
  end
end
