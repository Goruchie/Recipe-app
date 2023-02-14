class FoodsController < ApplicationController
  def index
    @food = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    # @food.id = current_user.id
    return unless @food.save!

    flash.now[:notice] = 'Food created successfully'
    redirect_to root_path
  end

  def destroy
    @food = Food.find(params[:id])
    # @user = @post.author_id
    @food.destroy
    redirect_to root_path
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
