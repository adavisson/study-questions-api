class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions, only: [:id, :question, :answer]
  end
end
