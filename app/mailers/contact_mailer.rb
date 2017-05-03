class ContactMailer < ApplicationMailer

  def send_contact(subject, text)
    @subject = subject
    @text = text

    mail to: "antoinebe35@gmail.com", subject: @subject
  end

end
