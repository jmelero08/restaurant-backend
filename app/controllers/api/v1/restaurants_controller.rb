class Api::V1::RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :update, :destroy]

    def index
      if logged_in?
        @restaurants = current_user.restaurants
        render json: RestaurantSerializer.new(@restaurants)
      else 
        render json: {
          error: "You are not signed in."
        }
      end
    end
  
    def show
      render json: @restaurant
    end
  
    def create
      @restaurant = current_user.restaurants.build(restaurant_params)
  
      if @restaurant.save
        render json:  RestaurantSerializer.new(@restaurant), status: :created
      else
        error_resp = {
          error: @restaurant.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    def update
      if @restaurant.update(restaurant_params)
        render json:  RestaurantSerializer.new(@restaurant), status: :ok
      else
        error_resp = {
          error: @restaurant.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    def destroy
      @restaurant.destroy
    end
  
    private
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
  
      def restaurant_params
        params.require(:restaurant).permit(:name, :description)
      end
end
