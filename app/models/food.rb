class Food < ApplicationRecord
  has_many :inventories
  has_many :recipe_foods, dependent: :destroy
end
