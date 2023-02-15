class RecipeFood < ApplicationRecord
  belongs_to :foods, foreign_key: 'food_id', class_name: 'Food'
  belongs_to :recipes, foreign_key: 'recipe_id', class_name: 'Recipe'
end
