class HomeController < ApplicationController

  def form
    if request.post?
      @answer = Answer.create!(answer_params)
    else
      @answer = Answer.new
    end
  end

  private def answer_params
    params.require(:answer).permit(:name, :chocolate, :puppies, :rainbows, :cold_hard_cash)
  end

end
