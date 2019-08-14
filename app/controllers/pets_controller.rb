class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    @pets = Pet.geocoded

    @markers = @pets.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { pet: pet })
      }
    end
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
    params.require(:pet).permit(:name, :description, :price, :photo, :address)
  end
end
