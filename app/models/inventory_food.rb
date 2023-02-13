class InventoryFood < ApplicationRecord
  belongs_to :foods
  belongs_to :inventories
end
