# frozen_string_literal: true

class TopsController < ApplicationController
  def show
    @top = Top.find(params[:id])
    @answers = Answer.all
  end

  def new
    @top = Top.new
  end

  def create
    @top = Top.new(top_params)
    if @top.save
      redirect_to top_path(@top)
    else
      render :new
    end
  end

  private

    def top_params
      params.permit(:name, :ques_one, :ques_two, :ques_three, :ques_four, :ques_five)
    end
end
