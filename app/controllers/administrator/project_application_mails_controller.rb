class Administrator::ProjectApplicationMailsController < AdministratorController

  before_action :set_project_application_mail, only: [:show, :edit, :update, :destroy]

  def index
    @project_application_mails = ProjectApplicationMail.all.paginate(:page => params[:page], :per_page => 10)
  end 


  def edit
    @project_application_mail = ProjectApplicationMail.find(params[:id])
  end

  # PATCH/PUT /project_application_mails/1
  # PATCH/PUT /project_application_mails/1.jso

  def destroy
    @project_application_mail.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/project_application_mails', notice: 'Вопрос удален' }
      format.json { head :no_content }
    end
  end

  # DELETE /project_application_mails/1
  # DELETE /project_application_mails/1.jso

  private

  def project_application_mail_params
    params.require(:project_application_mail)
  end

  def set_project_application_mail
    @project_application_mail = ProjectApplicationMail.find(params[:id])
  end

end
