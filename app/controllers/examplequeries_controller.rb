class ExamplequeriesController < ApplicationController
  def step1
  end

  def step2
    @selected_plan = params[:plan]
  end

  def step3
    @selected_plan = params[:plan]
    @addon = params[:addon]
  end

  def create
    p params
    redirect_to root_path
  end
end
