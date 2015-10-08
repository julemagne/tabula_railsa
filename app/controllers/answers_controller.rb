class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create!(answer_params)
    redirect_to @answer
  end

  def show
    @answer = Answer.find(params[:id])
  end

  private def answer_params
    params.require(:answer).permit(:name, :chocolate, :puppies, :rainbows, :cold_hard_cash)
  end

end
