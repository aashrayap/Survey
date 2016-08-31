class SurveysController < ApplicationController
  def index
    @surveys=Questionaire.all
    session.delete(:current_questionaire_id)
  end

  def show

    @survey=Questionaire.find_by(params[:id])
  end
end
