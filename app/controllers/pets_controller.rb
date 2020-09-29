class PetsController < ApplicationController

    def index 
        @pets = Pet.all
    end
    
    def new
        @pet = Pet.new
    end
    
    def edit
        @pet = Pet.find(params[:id])
    end

    def show
        @pet = Pet.friendly.find(params[:id])
        if @pet.nil?
            redirect_to  action: :index
        end
    end

    def update
        @pet = Pet.find(params[:id])
        if @pet.update(pet_params)
            flash[:success] = "Pet Atualizado Com Sucesso..."
            redirect_to(@pet)
        else
            flash[:error] = "Seu Pet Não foi Atualizado..."
            render :edit
        end
    end


    def create
        @pet = Pet.new(pet_params)
        
        if @pet.save
            flash[:success] = "Pet Criado Com Sucesso..."
            redirect_to pets_path
        else
            puts @pet.errors.inspect
            flash[:error] = "Pet Não foi Criado..."
            render :new
        end    
    end
    
    private

    def pet_params
        params.require(:pet).permit(:name, :date_of_birth, :pet_type, :avatar)
    end

end