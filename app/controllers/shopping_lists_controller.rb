class ShoppingListsController < ApplicationController
  # GET /shopping_lists or /shopping_lists.json
  def index
    @recipe_foods = RecipeFood.includes(:recipes).where(recipe_id: params[:recipe_id])
    @recipe_name = Recipe.find(params[:recipe_id])
    @inventory_name = Inventory.find(params[:inventory_id])
    @inventory_foods = InventoryFood.where(inventory_id: params[:inventory_id])
  end
end
