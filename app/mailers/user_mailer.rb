class UserMailer < ApplicationMailer
  default from: "mjsmith01@email.wm.edu"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new contact form message from #{name}")
  end
end
