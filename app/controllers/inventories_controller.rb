class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.where(user_id: current_user.id)
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to root_path
  end

  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.user_id = current_user.id
    return unless @inventory.save!

    flash.now[:notice] = 'Inventory created successfully'
    redirect_to inventories_path
  end

  def show
    @inventory = Inventory.find(params[:id])
    @foods = Food.all
    @inventory_foods = InventoryFood.where(inventory_id: params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:name)
  end
end
