class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.valid?
      @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
