class StarsController < ApplicationController
  layout false

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    restaurant.fans << current_user

    render locals: {
      restaurants: Restaurant.all
    }
  end

  def destroy
    restaurant = Restaurant.find(params[:restaurant_id])
    restaurant.fans.delete(current_user)

    render locals: {
      restaurants: Restaurant.all
    }
  end
end
