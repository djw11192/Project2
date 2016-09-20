class MembersController < ApplicationController
  def index
  end

  def account
    @member = Member.find(params[:id])
  end

  def join #step1
    @selected_plan = params[:plan]
  end

  def add #step2
    @selected_plan = params[:plan]
    @extra = params[:extra]
  end

  def confirm #step3
    @member = Member.new
    @extra = Product.new
  end

  def create
    @member = Member.new(member_params)
    # @member.plan = params[:plan]
    # @extra = Product.new(product_params)

    if @member.save
      @member.status = "active"
      redirect_to "/account/#{@member.id}"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def member_params
    params.require(:member).permit(:email, :password, :name, :address, :plan)
  end
  def product_params
  end
end
