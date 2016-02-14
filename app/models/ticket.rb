class Ticket < ActiveRecord::Base
  after_create :send_notification

  private

  def send_notification
    TicketMailer.recieve_mail(self).deliver_now
  end
end
