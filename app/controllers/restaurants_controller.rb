class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end
end
