class RestaurantsController < ApplicationController
  def index
    render locals: {
      restaurants: Restaurant.all
    }
  end
end
