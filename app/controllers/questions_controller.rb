class QuestionsController < ApplicationController

  def create
    question = Question.create(question_params)
    session[:current_user_email] = question_params[:email]
    redirect_to question_path(question)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answer.order(created_at: :desc)
  end

  private

  def question_params
    params.require(:question).permit(:email, :body)
  end
end
