class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions, only: [:id, :question, :answer]
  end

  def show
    question = Question.find(params[:id])
    render json: question, only: [:id, :question, :answer]
  end

  def create
    question = Question.find_or_create_by(question: params[:question], answer: params[:answer], subject_id: params[:subject_id])
    render json: question
  end
end
