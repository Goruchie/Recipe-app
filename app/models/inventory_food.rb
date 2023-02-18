class InventoryFood < ApplicationRecord
  belongs_to :foods, foreign_key: 'food_id', class_name: 'Food'
  belongs_to :inventories, foreign_key: 'inventory_id', class_name: 'Inventory'
end
