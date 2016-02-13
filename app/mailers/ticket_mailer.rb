class TicketMailer < ApplicationMailer
  def recieve_mail from, name, message
    @name = name
    @message = message
    mail(to: emails, subject: "Вы получили сообщение", from: from)
  end

  def send_response to, name, subject
    mail(to: to, subject: subject)
  end


  private

  def emails
    ["sichirc@gmail.com", "anikeewa.olga@gamil.com"]
  end
end
