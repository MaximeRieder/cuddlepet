class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new('fox')
    @pet.save
  end

  def show
    @pet = Pet.find(params(:id))
  end
end
