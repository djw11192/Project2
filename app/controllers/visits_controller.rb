class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new({plan: params[:visit][:plan]})

    if @visit.save
      redirect_to add_path
    end

  end

  def destroy
  end
end
