class SurveysController < ApplicationController
  def index
    @surveys=Questionaire.all
  end

  def edit
    @survey=Questionaire.find(params[:id])
    @questions=@survey.questions
  end

  def update
    @questionaire=Questionaire.find(params[:id])
    @questionaire.update(my_params)
    redirect_to survey_path(@questionaire)
  end

  def show
    @questionaire=Questionaire.find(params[:id])
  end


  private

  def my_params
    params.require(:questionaire).permit(:title,:description,:id,:questions_attributes => [:id,:answer])
  end
end


