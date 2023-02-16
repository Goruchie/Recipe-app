class Inventory < ApplicationRecord
  belongs_to :users, foreign_key: 'user_id', class_name: 'User'
  has_many :inventory_foods
end
