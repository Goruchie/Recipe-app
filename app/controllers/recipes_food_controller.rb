class RecipesFoodController < ApplicationController
  def create
    @foods = Food.all
    @recipe_food = RecipeFood.new(recipe_foods_params)
    @recipe_food.recipe_id = params[:recipe_id]
    return unless @recipe_food.save!

    flash.now[:notice] = 'Recipe Food created successfully'
    redirect_back(fallback_location: root_path)
  end

  def show
    @recipe_foods = RecipeFood.where(recipe_id: params[:id])
  end

  def destroy
    @recipe_food = RecipeFood.includes(:foods, :recipes).find(params[:recipe_food_id])
    @recipe_food.destroy
    redirect_back(fallback_location: root_path)
  end

  def recipe_foods_params
    params.require(:recipe_foods).permit(:food_id, :quantity)
  end
end
