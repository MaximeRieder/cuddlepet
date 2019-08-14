class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pets_params)
    @pet.user = current_user
    @pet.save
    redirect_to pet_path(@pet)
  end

  private

  def pets_params
    params.require(:pet).permit(:name, :description, :price, :photo)
  end
end
