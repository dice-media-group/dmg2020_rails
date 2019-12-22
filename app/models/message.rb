class Message < ApplicationRecord
    def send_message_to_rep
        m = NotificationMailer.contact(self)
        m.deliver_now
    end
end
