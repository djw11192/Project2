class MembersController < ApplicationController
  before_action :authorize, only: [:account, :change_plan, :change_email, :change_address, :change_frequency]
  def index
  end

  def account
    redirect_to account_path(current_member) unless current_member.id == params[:id].to_i
    @member = Member.find(params[:id])
  end

  def join #step1
    @member = Member.new
  end

  def add #step2
    @selected_plan = params[:plan]
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
      session[:member_id] = @member.id
      redirect_to "/account/#{@member.id}"

    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def change_plan
    @member = Member.find(params[:id])
  end

  def change_email
    @member = Member.find(params[:id])
  end

  def change_frequency
    @member = Member.find(params[:id])
  end

  def change_address
    @member = Member.find(params[:id])
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
    params.require(:member).permit(:email, :password, :name, :address, :plan, :status, :frequency)
  end
  def product_params
  end
end
