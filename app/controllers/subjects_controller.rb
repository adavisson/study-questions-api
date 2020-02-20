class SubjectsController < ApplicationController
  def index
    subjects = Subject.all
    render json: subjects
  end

  def show
    #format this better
    questions = Subject.find(params[:id]).questions
    render json: questions
  end
end
