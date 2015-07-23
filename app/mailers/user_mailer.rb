class UserMailer < ApplicationMailer
  default from: "antonenkodima12@gmail.com"

  def welcome_email(question)
    @mail_info = question
    mail(to: 'd.antonenko94@mail.ru', subject: 'Welcome to My Awesome Site')
  end

end