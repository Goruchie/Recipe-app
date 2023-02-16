class ShoppingListsController < ApplicationController

  # GET /shopping_lists or /shopping_lists.json
  def index
    @recipe_id = Recipe.find(params[:recipe_id])
    @recipe_foods = RecipeFood.where(recipe_id: params[:recipe_id])
    @inventory_id = Inventory.find(params[:inventory_id])
    @inventory_foods = InventoryFood.where(inventory_id: params[:inventory_id])
  end
end
