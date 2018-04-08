class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_qeustion_author.subject
  #
  def notify_question_author(answer)
    sleep  5

    @greeting = "Hi"
    @answer = answer

    #mail subject: "New answer to your question", to: "to@example.org"
    mail to: answer.question.email, from: answer.email
  end
end
