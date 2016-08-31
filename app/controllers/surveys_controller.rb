class SurveysController < ApplicationController
  def index
    @surveys=Questionaire.all
  end

  def show
    @survey=Questionaire.find(params[:id])
  end
end
