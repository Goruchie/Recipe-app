class FoodsController < ApplicationController
    def index
      @food = Food.all
    end
    
      def new
        @food = Food.new
      end
    
      def create
        @food = Food.new(food_params)
        @food.id = current_user.id
        flash.now[:notice] = 'Food created successfully' if @food.save!
        redirect_to foods_path(current_user.id)
      end
    
    #   def show
    #     @food = Food.find(params[:id])
    #     @user = User.find(params[:user_id])
    #   end
    
    #   def destroy
    #     @food = Food.find(params[:id])
    #     @user = @post.author_id
    #     @food.destroy
    #     redirect_to food_path_path(@user)
    #   end
    
    #   def food_params
    #     params.require(:food).permit(:name, :measurement_unit, :price)
    #   end
end
