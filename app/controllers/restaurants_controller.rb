class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: %i[ show edit update destroy ]
  
    # GET /restaurants or /restaurants.json
    def index
      @restaurants = Restaurant.all
    end
  
    # GET /restaurants/1 or /restaurants/1.json
    def show
    end
  
    # GET /restaurants/new
    def new
      @restaurant = Restaurant.new
    end
  
    # GET /restaurants/1/edit
    def edit
    end
  
    # POST /restaurants or /restaurants.json
    def create
      @restaurant = Restaurant.new(restaurant_params)      
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end      
    end
  
    # PATCH/PUT /restaurants/1 or /restaurants/1.json
    def update
    end
  
    # DELETE /restaurants/1 or /restaurants/1.json
    def destroy
      @restaurant.destroy
      redirect_to restaurants_path
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def restaurant_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
      end
  end
  