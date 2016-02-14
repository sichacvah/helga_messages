class Ticket < ActiveRecord::Base
  after_create :send_notification

  private

  def send_notification

    result = TicketMailer.recieve_mail(self).deliver_now
    puts self.email
    puts self.name
    puts ENV['MAILGUN_LOGIN']
  end
end
