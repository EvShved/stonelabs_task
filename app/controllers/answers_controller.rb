class AnswersController < ApplicationController
  def new
    # @question_id = params[:question_id]
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      flash[:notice] = 'Good'
      redirect_to question_path(answer_params[:question_id])
    else
      flash.now[:alert] = 'Bad'
      redirect_to new_answer_path({ question_id: answer_params[:question_id] })
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:context,
                                   :user_id,
                                   :question_id)
  end
end
