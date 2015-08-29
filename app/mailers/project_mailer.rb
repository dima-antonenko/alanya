class ProjectMailer < ApplicationMailer
  default from: "antonenkodima12@gmail.com"

  #узнать больше 
  #адресат - администратор
  def info_email(application_mail)
    @mail_info = application_mail
    @project = Project.find(@mail_info.project_id)
    mail(to: 'd.antonenko94@mail.ru', subject: "Заявка на получение дополнительной информации о проекте")
  end

  #отправить по email
  #адресат - пользоатель
  def to_user_mail(project, email)
  	@project = project
  	@email = email
  	mail(to: @email, subject: "Дополнительная информация по проекту #{@project.name}")
  end

  #отправляется на почту сайта
  #вопрос из формы "задать вопрос", которая есть на всех страницах сайта
  def question_mail(question)
    @mail_info = question
    mail(to: "d.antonenko94@mail.ru", subject: "Вопрос с сайта alanyaproperties.ru")
  end



end