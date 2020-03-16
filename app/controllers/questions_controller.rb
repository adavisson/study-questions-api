class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions, only: [:id, :question, :answer]
  end

  def show
    question = Question.find(params[:id])
    render json: question, only: [:id, :question, :answer]
  end
end
