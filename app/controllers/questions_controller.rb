class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(new_question_params)
    if @question.valid?
      @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(edit_question_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def new_question_params
    params.require(:question).permit(:title, :country_id, :category_id, :status_id, :text).merge(user_id: current_user.id, status_id: 2)
  end

  def edit_question_params
    params.require(:question).permit(:title, :country_id, :category_id, :status_id, :text, :status_id).merge(user_id: current_user.id)
  end
end
