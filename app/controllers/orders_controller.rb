class OrdersController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @order = @pet.orders.build
  end

  def create
    # calculer le prix
    Order.create(
      starts_at: Date.new(params[:order]["starts_at(1i)"].to_i,params[:order]["starts_at(2i)"].to_i,params[:order]["starts_at(3i)"].to_i),
      ends_at: Date.new(params[:order]["ends_at(1i)"].to_i,params[:order]["ends_at(2i)"].to_i,params[:order]["ends_at(3i)"].to_i),
      final_price: 0,
      user_id: current_user.id,
      pet_id: params[:pet_id]
    )
    # redirect vers la show de l'order ou l'index des orders
  end
end
