class RecipesFoodController < ApplicationController
  def create
    @foods = Food.all
    @recipe_food = RecipeFood.new(recipe_foods_params)
    @recipe_food.recipe_id = Recipe.find(params[:recipe_id])
    return unless @recipe_food.save!
    flash.now[:notice] = 'Recipe Food created successfully'
    redirect_back(fallback_location: root_path)
  end

  def show
    @recipe_foods = RecipeFood.find(params[:id])
  end

  def recipe_foods_params
      params.require(:recipe_foods).permit(:food_id, :quantity)
  end
end
