class InventoriesFoodController < ApplicationController
    def create
        @foods = Food.all
        @inventory_food = InventoryFood.new(inventory_foods_params)
        @inventory_food.inventory_id = params[:inventory_id]
        return unless @inventory_food.save!
    
        flash.now[:notice] = 'Inventory Food created successfully'
        redirect_back(fallback_location: root_path)
    end

    def recipe_foods_params
        params.require(:inventories_food).permit(:food_id, :quantity)
    end
end
