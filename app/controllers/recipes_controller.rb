class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    return unless @recipe.save!

    flash.now[:notice] = 'Recipe created successfully'
    redirect_to recipes_path
  end

  def destroy
    @recipe = Recipe.includes(:recipe_foods).find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.includes(:recipe_foods).find(params[:id])
    @foods = Food.all
    @recipe_foods = RecipeFood.where(recipe_id: params[:id])
    @inventories = Inventory.all
  end

  def public
    @public_recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end

  def toggle_public
    @recipe = Recipe.includes(:users).find(params[:id])
    @recipe.public = !@recipe.public

    redirect_to recipe_path(@recipe.id), notice: 'Recipe updated' if @recipe.save
  end
end
