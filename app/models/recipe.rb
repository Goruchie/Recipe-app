class Recipe < ApplicationRecord
  has_many :recipe_foods
  belongs_to :users, foreign_key: 'user_id', class_name: 'User',  dependent: :destroy

  def self.total_amount(recipe)
    total_amount = 0
    recipe.recipe_foods.each do |recipe_food|
      food = recipe_food.foods
      total_amount += recipe_food.quantity * food.price
    end
    total_amount
  end
end
