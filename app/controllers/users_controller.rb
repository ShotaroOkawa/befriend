class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = Article.where(user_id: params[:id]).order(id: "desc")
    @user_events = UserEvent.where(user_id: params[:id]).order(id: "desc")
    @questions = Question.where(user_id: params[:id]).order(id: "desc")
  end
end
