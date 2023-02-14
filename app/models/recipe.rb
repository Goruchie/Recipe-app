class Recipe < ApplicationRecord
  has_many :recipe_foods
  belongs_to :users , foreign_key: 'user_id', class_name: 'User'
end
