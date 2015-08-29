class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)

    respond_to do |format|
      if @question.save(question_params)
        ProjectMailer.question_mail(@question).deliver
        format.html { redirect_to :back,
                      notice: 'Вопрос успешно отправлен' }
      else
        format.html { redirect_to :back,
                      notice: 'Произошла ошибка, заполните все поля' }
      end
    end

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:project_id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def question_params
    params.require(:question).permit( :name, :skype, :email, :phone, :message)
  end
end
