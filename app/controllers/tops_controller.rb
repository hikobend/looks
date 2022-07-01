class TopsController < ApplicationController
  def top 
  end
  
  def new
    @top = Top.new
  end

  def create
    @top = Top.new(top_params)
    if @top.save
      redirect_to questions_path, notice: '名前を追加しました'
    else
      flash.now[:notice] = '追加に失敗しました'
      render :new
    end
  end

  private
  def top_params
    params.permit(:name)
  end
end
