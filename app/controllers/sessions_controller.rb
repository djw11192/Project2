class SessionsController < ApplicationController
  def new
  end

  def create
    @member = Member.find_by_email(params[:email])

    if @member && @member.authenticate(params[:password])
      #log in (create session)
      session[:member_id] = @member.id
      redirect_to "/account/#{@member.id}"
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
