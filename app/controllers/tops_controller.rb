class TopsController < ApplicationController
  def top 
  end
  
  def index
    @tops = Top.all
  end 

  def new
    @top = Top.new
  end

  def create
    @top = Top.new(top_params)
    if @top.save
      redirect_to questions_path
    else
      render :new
    end
  end

  private

  def top_params
    params.permit(:name)
  end
end
