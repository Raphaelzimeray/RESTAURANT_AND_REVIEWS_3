class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.where(user_id: current_user.id)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
