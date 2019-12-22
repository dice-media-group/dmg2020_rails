class NotificationMailer < ApplicationMailer
    def welcome
        mail(to: "carl@dicemediagroup.com", subject: "welcome to our app")
    end

    def contact(message)
        @message = message
        mail(to: "carl@dicemediagroup.com", 
        subject: "[dicemediagroup.com] Contact message")
    end
end
