class MessageMailer < ApplicationMailer
  default from: "info@ethicalswitch.com"
  layout 'mailer'
  
  def new_message_email(message)
    @message = message
    mail(to: message.email, subject: 'New Message Received | Ethical Switch')
  end
end
