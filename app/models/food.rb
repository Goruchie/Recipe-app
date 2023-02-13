class Food < ApplicationRecord
  has_many :inventories
  has_many :recipe_foods
end
