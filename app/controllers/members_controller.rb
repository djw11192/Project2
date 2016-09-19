class MembersController < ApplicationController
  def index
  end

  def account
  end

  def join #step1
    @selected_plan = params[:plan]
  end

  def add #step2
    @selected_plan = params[:plan]
    @extra = params[:extras]
  end

  def confirm #step3
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to account_path
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
    params.require(:member).permit(:name, :email, :password, :address)
  end

end
