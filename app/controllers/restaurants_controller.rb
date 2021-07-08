class RestaurantsController < ApplicationController
  # index, :new, :show, :create
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params) 
        # DIFF taks_params & params[:restaurant]
      if @restaurant.save
      # Will raise ActiveModel::ForbiddenAttributesError
          redirect_to restaurant_path(@restaurant)
      else
          render :new
      end
  end

  private

    def restaurant_params
        params.require(:restaurnat).permit(:name, :address, :phone_numeber, :category)
    end

end
