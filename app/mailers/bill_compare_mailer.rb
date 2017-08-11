class BillCompareMailer < ApplicationMailer
  default from: "info@ethicalswitch.com"
  layout 'mailer'
  
  def bill_compare_email(message)
    @message = message
    mail(to: message.email, subject: 'New Bill Comparison Request | Ethical Switch')
  end
end
