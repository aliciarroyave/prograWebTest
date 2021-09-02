class HabitatsController < ApplicationController
    def index
        @Habitat = Habitat.all  

        render :ok, json: @Habitat
    end

    def show
        @habitat = Habitat.find(params[:id])
        render 200, json: @habitat
    end

    def create 
        @habitat = Habitat.new(habitat_params)

        if @habitat.save
            render :create, json: @habitat
        else 
            render :bad_request, json: @habitat.errors
        end
    end    
    def update
        @habitat = Habitat.find(params[:id])
        if @habitat.update(habitat_params)
            render 200, json: @habitat
        else 
            render 422, json: @habitat.errors
        end
    end

    def destroy
        @habitat = Habitat.find(params[:id])
        if @habitat.destroy
            render 204
        else 
            render 422, json: @habitat.errors
        end
    end

    protected 
    def habitat_params
        params.require(:habitat).permit(:name, :descripcion)
    end
end
