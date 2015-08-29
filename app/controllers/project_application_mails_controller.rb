class ProjectApplicationMailsController < ApplicationController
  before_action :set_project_application_mail, only: [:show, :edit, :update, :destroy]


  # GET /project_application_mails/new
  def new
    @project_application_mail = ProjectApplicationMail.new
  end

  def create
    @project = Project.friendly.find(params[:project_id])

    @application_mail = ProjectApplicationMail.new(project_application_mail_params)

    if @application_mail.valid? == true
      @project_application_mail = @project.project_application_mails.create( project_application_mail_params )
       ProjectMailer.info_email(@project_application_mail).deliver_later
       redirect_to :back, notice: 'Ваш запрос отправлен, спасибо!'
    else
       redirect_to :back, notice: "Произошла ошибка, заполните все данные"
    end  
  
  end

  

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project_application_mail
    @project_application_mail = ProjectApplicationMail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_application_mail_params
    params[:project_application_mail].permit(:project_id, :name, :email)
  end
end
