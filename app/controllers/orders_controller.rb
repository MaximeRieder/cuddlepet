class OrdersController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @order = @pet.orders.build
  end

  def create
    raise
    @pet = Pet.find(params[:pet_id])
    @users = Tag.find(params[:order][:user])
    @users.each do |user|
      order = Order.new
      order.pet = @pet
      order.user = user
      order.save
    end
    redirect_to pets_path
  end
end
