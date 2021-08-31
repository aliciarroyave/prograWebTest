class TypesController < ApplicationController
    def index
        @types = Type.all  

        render :ok, json: @types
    end

    def show
        @type = Type.find(params[:id])
        render 200, json: @type
    end

    def create 
        @type = Type.new(type_params)

        if @type.save
            render :create, json: @type
        else 
            render :bad_request, json: @type.errors
        end
    end    
    def update
        @type = Type.find(params[:id])
        if @type.update(type_params)
            render 200, json: @type
        else 
            render 422, json: @type.errors
        end
    end

    def destroy
        @type = Type.find(params[:id])
        if @type.destroy
            render 204
        else 
            render 422, json: @type.errors
        end
    end

    protected 
    def type_params
        params.require(:type).permit(:name, :descripcion)
    end
end
