class OrdersController < ApplicationController

  def new
    @pet = Pet.find(params[:pet_id])
    @order = @pet.orders.build
  end

  def create
    # calculer le prix
    @order = Order.new(orders_params)
    @order.pet = Pet.find(params[:pet_id])
    @order.user = current_user
    if @order.save
      redirect_to pet_order_path(@order.pet, @order)
    end
  end


  def show

  end

  private

  def orders_params
    params.require(:order).permit(:starts_at, :ends_at, :final_price, :user_id, :pet_id)
  end

end
