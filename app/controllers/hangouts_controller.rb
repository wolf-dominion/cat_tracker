class HangoutsController < ApplicationController
    before_action :get_hangout_by_id, only: [:show, :update, :destroy]
    def index
        @hangouts = Hangout.all

        tagged_hash = {"Hangouts" => @hangouts} 
        render json: tagged_hash, include: [:cat, :location]
    end

    def show
        render json: @hangout
    end

    def create
        @hangout = Hangout.create(hangout_params)
        render json: @hangout, include: [:cat, :location]
    end

    def destroy
        @hangout.destroy
    end

    private

    def hangout_params
        params.require(:hangout).permit(:cat_id, :location_id, :frequency)
    end

    def get_hangout_by_id
        @hangout = Hangout.find(params[:id])
    end
end
