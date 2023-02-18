class InventoriesFoodController < ApplicationController
  def create
    @foods = Food.all
    @inventory_food = InventoryFood.new(inventory_foods_params)
    @inventory_food.inventory_id = params[:inventory_id]
    return unless @inventory_food.save!

    flash.now[:notice] = 'Inventory Food created successfully'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @inventory_food = InventoryFood.includes(:foods, :inventories).find(params[:id])
    @inventory_food.destroy
    redirect_back(fallback_location: root_path)
  end

  def inventory_foods_params
    params.require(:inventory_foods).permit(:food_id, :quantity)
  end
end
