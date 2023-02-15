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
    @recipe = Recipe.find(params[:id])
    # @user = @post.author_id
    @recipe.destroy
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
    @foods = Food.all
    @recipe_foods = RecipeFood.where(recipe_id: params[:id])
  end

  def public
    @public_recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
