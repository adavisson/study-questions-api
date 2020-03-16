class SubjectsController < ApplicationController
  def index
    subjects = Subject.all
    render json: subjects, only: [:id, :name]
  end

  def show
    #format this better
    questions = Subject.find(params[:id]).questions
    render json: questions, only: [:id, :question, :answer, :subject_id]
  end

  def create
    subject = Subject.find_or_create_by(name: params[:name]);
    render json: subject
  end
end
