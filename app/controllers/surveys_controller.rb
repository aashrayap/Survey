class SurveysController < ApplicationController
  def index
    @surveys=Questionaire.all
  end

  def edit
    @survey=Questionaire.find(params[:id])
    @questions=@survey.questions
  end
end
