class PetsController < ApplicationController

    def new
        @pet = Pet.new
    end
    
    def create
        @pet = Pet.new(pet_params)
        
        if @pet.save
            flash[:success] = "Pet Criado Com Sucesso..."
        else
            puts @pet.errors.inspect
            flash[:error] = "Pet Não foi Criado..."
        end
        
        render :new
    end
    
    private

    def pet_params
        params.require(:pet).permit(:name, :date_of_birth, :pet_type)
    end

end