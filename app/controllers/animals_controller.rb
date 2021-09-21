class AnimalsController < ApplicationController
    def index
        @animals = Animal.all  

        render :ok, json: @animals
    end

    def show
        @animal = Animal.find(params[:id])
        render 200, json: @animal
    end

    def create 
        @animal = Animal.new(animal_params)

        if @animal.save
            render :create, json: @animal
        else 
            render :bad_request, json: @animal.errors
        end
    end    
    def update
        @animal = Animal.find(params[:id])
        if @animal.update(animal_params)
            render 200, json: @animal
        else 
            render 422, json: @animal.errors
        end
    end

    def destroy
        @animal = Animal.find(params[:id])
        if @animal.destroy
            render 204
        else 
            render 422, json: @animal.errors
        end
    end

    protected 
    def animal_params
        params.require(:animal).permit(:name,  :descripcion, :extinto, :sexualidad, :tamaño, :foto, :nombreCien, :genero)
    end
end

