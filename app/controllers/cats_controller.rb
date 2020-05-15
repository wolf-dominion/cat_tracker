class CatsController < ApplicationController
    before_action :get_cat_by_id, only: [:show, :update, :destroy]
    def index
        @cats = Cat.all
        render json: {"Cats" => @cats}
        # render json: @cats
    end

    def show
        render json: @cat
    end

    def create
        @cat = Cat.create(cat_params)
        render json: @cat
    end

    def destroy
        @cat.destroy
    end

    private

    def cat_params
        params.require(:cat).permit(:species, :age, :name)
    end

    def get_cat_by_id
        @cat = Cat.find(params[:id])
    end

end
