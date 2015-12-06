class QuestionsController < ApplicationController
  def show
    @question = Question.find_by(params[:id])
  end
end
