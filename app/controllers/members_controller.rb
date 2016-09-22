class MembersController < ApplicationController
  before_action :authorize, only: [:account, :change_plan, :change_email, :change_address, :change_frequency]
  def index
  end

  def account
    redirect_to account_path(current_member) unless current_member.id == params[:id].to_i
    @member = Member.find(params[:id])

    #generate a picture for the plan the member is on
    @pic = @member.order.order_products.first.product.image
    # @pic = Product.find_by_name(@member.order.plan)
  end

  def join #step1
    @member = Member.new
    @hide_nav = true
  end

  def add #step2
    @selected_plan = params[:plan]
  end

  def confirm #step3
    @member = Member.new
    @extra = Product.new
    @hide_nav = true
  end

  def create
    @member = Member.new(member_params)
    # @member.plan = params[:plan]
    # @extra = Product.new(product_params)

    if @member.save
      session[:member_id] = @member.id #member is logged in and goes to account page

      #create an order for the member who signs up
      @member.order = Order.create({plan: params[:member][:plan], frequency: "Monthly"})

      @test = params[:member][:plan]

      #create order_product join table so member can add products to their order
      @member.order.order_products.create({product: Product.find_by_name(@test), quantity: 1})
      p "**************************************"
      p params
      p "**************************************"

      redirect_to "/account/#{@member.id}"

    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def change_plan
    @order = Member.find(params[:id]).order
  end

  def change_email
    @member = Member.find(params[:id])
    @pic = @member.order.order_products.first.product.image
  end

  def change_frequency
    @member = Member.find(params[:id])
  end

  def change_address
    @member = Member.find(params[:id])
    @pic = @member.order.order_products.first.product.image
  end

  def update
    @member = Member.find(params[:id])

    if @member.update_attributes(member_params)
      redirect_to account_path
    end
  end

  def destroy
  end

  def add_info

  end

  private
  def member_params
    params.require(:member).permit(:email, :password, :name, :address)
  end
  def product_params
  end
end
