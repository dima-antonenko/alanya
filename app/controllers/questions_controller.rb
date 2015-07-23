class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.create(question_params)

    respond_to do |format|
      if @question.save(question_params)
        #UserMailer.welcome_email(@question).deliver_later
        format.html { redirect_to :back,
                      notice: 'Вопрос успешно отправлен' }
      else
        format.html { redirect_to :back,
                      notice: 'Произошла ошибка' }
      end
    end

  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question,
                      notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors,
                      status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
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
