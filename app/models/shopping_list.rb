class ShoppingList < ApplicationRecord
  belongs_to :inventories, foreign_key: 'inventory_id', class_name: 'Inventory'
  belongs_to :recipes, foreign_key: 'recipe_id', class_name: 'Recipe'
end
