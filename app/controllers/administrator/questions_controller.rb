class Administrator::QuestionsController < AdministratorController

  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.paginate(:page => params[:page], :per_page => 10)
  end 


  def edit
    @question = Question.find(params[:id])
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.jso

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/questions', notice: 'Вопрос удален' }
      format.json { head :no_content }
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.jso

  private

  def question_params
    params.require(:question)
  end

  def set_question
    @question = Question.find(params[:id])
  end

end
