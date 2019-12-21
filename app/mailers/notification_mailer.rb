class NotificationMailer < ApplicationMailer
    def welcome
        mail(to: "carl@dicemediagroup.com", subject: "welcome to our app")
    end
end
