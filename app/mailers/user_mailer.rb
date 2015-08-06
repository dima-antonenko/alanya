class UserMailer < ApplicationMailer
  default from: "antonenkodima12@gmail.com"

  def welcome_email(question)
    @mail_info = question
    @project = Project.find(question.project_id)
    mail(to: @mail_info.email, subject: "#{@project.name}")
  end

end