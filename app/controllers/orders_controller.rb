class OrdersController < ApplicationController
  def show_extra
    @product = Product.find_by_name(params[:product])
  end

  def add_extra
    @member= Member.find(params[:id])
    @product = Product.find_by_name(params[:product])

    #add product to order_products
    @member.order.order_products.create({product: @product, quantity: 1})
    redirect_to account_path(current_member)
  end

  def change_plan
    @order = Member.find(params[:id]).order
  end

  def change_frequency
    @order = Member.find(params[:id]).order
  end

  def update
    @order= Member.find(current_member).order

    if @order.update(order_params)
      redirect_to account_path(current_member)
    end
  end
  private
  def order_params
    params.require(:order).permit(:plan, :frequency)
  end
end
