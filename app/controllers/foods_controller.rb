class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    return unless @food.save!

    flash.now[:notice] = 'Food created successfully'
    redirect_to foods_path
  end

  def destroy
    @food = Food.includes(:recipe_foods).find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
