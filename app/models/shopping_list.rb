class ShoppingList < ApplicationRecord
  belongs_to :inventories, foreign_key: 'inventory_id', class_name: 'Inventory'
  belongs_to :recipes, foreign_key: 'recipe_id', class_name: 'Recipe'

  def self.total_amount(recipe, inventory)
    total_amount = 0
    recipe_food_values = []

    recipe.each do |recipe_food|
      inventory.each do |inventory_food|
        if !inventory_food.foods.name.include?(recipe_food.foods.name)
          value = recipe_food.foods.price * recipe_food.quantity
          total_amount += value
          recipe_food_values << {
            name: recipe_food.foods.name,
            quantity: recipe_food.quantity,
            value:
          }
        elsif inventory_food.foods.name == recipe_food.foods.name
          if inventory_food.quantity.to_i >= recipe_food.quantity.to_i
            value = recipe_food.foods.price * recipe_food.quantity.to_i
            total_amount += value
            recipe_food_values << {
              name: recipe_food.foods.name,
              quantity: recipe_food.quantity,
              value:
            }
          else
            value = recipe_food.foods.price * inventory_food.quantity.to_i
            total_amount += value
            recipe_food_values << ({
              name: recipe_food.foods.name,
              quantity: inventory_food.quantity.to_i,
              value:
            })
            recipe_food.quantity -= inventory_food.quantity.to_i
          end
        end
      end
    end

    unique_recipe_food_values = recipe_food_values.uniq { |rfv| rfv[:name] }
    {
      recipe_food_values: unique_recipe_food_values,
      total_amount:,
      recipe_food_values_count: unique_recipe_food_values.size,
      recipe_quantity: recipe_food_values.sum { |rfv| rfv[:quantity] }
    }
  end
end
