class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = Article.where(user_id: params[:id])
    @user_events = UserEvent.where(user_id: params[:id])
    @questions = Question.where(user_id: params[:id])
  end
end
