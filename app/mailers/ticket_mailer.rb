class TicketMailer < ApplicationMailer
  def recieve_message ticket
    @ticket = ticket
    mail(to: emails, subject: "Вы получили сообщение")
  end

  def send_response to, name, subject
    mail(to: to, subject: subject)
  end


  private

  def emails
    ["sichirc@gmail.com", "anikeewa.olga@gmail.com"]
  end
end
