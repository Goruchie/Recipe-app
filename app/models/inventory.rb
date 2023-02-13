class Inventory < ApplicationRecord
  belongs_to :users
  has_many :inventory_foods
end
