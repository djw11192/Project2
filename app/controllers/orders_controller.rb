class OrdersController < ApplicationController
  def show_extra
    @product = Product.find_by_name(params[:product])
  end

  def add_extra
    @member = Member.find(params[:id])
    @product = Product.find_by_name(params[:product]).id
    # Order.create({member_id: params[:id], product_id: @product, quantity: 1})
    # p params
    # redirect_to account_path

    @member.products << Product.find_by_name(params[:product])
    redirect_to account_path
  end
end
