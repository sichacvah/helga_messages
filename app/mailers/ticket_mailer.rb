class TicketMailer < ApplicationMailer
  def recieve_mail ticket
    @ticket = ticket
    puts emails
    mail(to: emails, subject: "Вы получили сообщение", from: @ticket.email)
  end

  def send_response to, name, subject
    mail(to: to, subject: subject)
  end


  private

  def emails
    ["sichirc@gmail.com", "anikeewa.olga@gmail.com"]
  end
end
