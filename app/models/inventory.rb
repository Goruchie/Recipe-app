class Inventory < ApplicationRecord
  belongs_to :users
  has_many :inventory_foods
  has_many :shopping_lists
end
