class AdoptionsController < ApplicationController
  
   def show
       @adoption = Adoption.find(params[:id])
   end

   def new
       @adoption = Adoption.new
   end

   def create
      @adoption = Adoption.create(adoption_params)
      redirect_to @adoption
   end
   
   private

   def adoption_params
       params.require(:adoption).permit(:adopter_id,:pet_id)
   end
end
