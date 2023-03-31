class AnimalsController < ApplicationController
    def index
        animals = Animal.all 
        render json: animals, include: [:sightings]
    end

    def show
        animal = Animal.find(params[:id])
        render json: animal.to_json(include: [:sightings])
        
    end

    def create
        animal.create(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end

    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end

    def destroy
        animal = Animal.find(params[:id])
        if animal.destroy
             render json: animal
        end
    end

    private
    def animal_params
        params.require(:animal).permit(:common_name, :scientific_binomial)
    end

end
