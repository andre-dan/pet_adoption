class AdoptionsController < ApplicationController

    before_action :pet, only: [:create]

    def new
        @adoption = Adoption.new
    end
    
    def create
        @adoption = Adoption.new(adoption_params.merge(date: Date.today, pet: @pet))
      
        if @adoption.save

            flash[:success] = "Prabens #{@adoption.name}, seu novo amigo(a) #{@pet.name} agradece de coração..."
            redirect_to pets_path
        else
            
            flash[:error] = "Novo Dono Não foi Criado..."
            render :new
        end
         
    end
    
    private

    def adoption_params
        params.require(:adoption).permit(:name)
    end

    def pet
        @pet = Pet.friendly.find(params[:pet_id])
    end

end
