class OrderProductsController < ApplicationController
  def show_box
    @member = Member.find(params[:id])
    @plan = @member.order.plan

    @order_products = @member.order.order_products
  end
end
