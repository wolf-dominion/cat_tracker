class LocationsController < ApplicationController
    before_action :get_location_by_id, only: [:show, :update, :destroy]
    def index
        @locations = Location.all
        render json: {"Locations" => @locations}
    end

    def show
        render json: @location
    end

    def create
        @location = Location.create(location_params)
        render json: @location
    end

    def destroy
        @location.destroy
        redirect_to action: "index"
    end

    private

    def location_params
        params.require(:location).permit(:title, :squarefoot)
    end

    def get_location_by_id
        @location = Location.find(params[:id])
    end

end
