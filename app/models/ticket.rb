class Ticket < ActiveRecord::Base
  after_create :send_notification

  private

  def send_notification
    result = TicketMailer.recieve_message(self).deliver_now
    puts "MAILGUN_DOMAIN => #{result}"
  end
end
