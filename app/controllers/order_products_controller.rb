class OrderProductsController < ApplicationController
  def show_box
    @member = Member.find(params[:id])
    @plan = @member.order.plan

    @order_products = @member.order.order_products
  end

  def
  def remove_products
          #... Do what needs to be done.
    self.delay(:run_at => 1.minute.from_now).remove_products
  end
end
