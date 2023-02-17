class ShoppingListsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.includes(:foods, :recipes).where(recipe_id: params[:recipe_id])
    @recipe_name = Recipe.find(params[:recipe_id])
    @inventory_name = Inventory.find(params[:inventory_id])
    @inventory_foods = InventoryFood.includes(:foods).where(inventory_id: params[:inventory_id])
  end
end
