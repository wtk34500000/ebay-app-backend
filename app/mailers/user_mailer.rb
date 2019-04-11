class UserMailer < ApplicationMailer
    default from: 'ecom.app.testing@gmail.com'
 
    def payment_email(recipient, name)
        @name=name
        mail(to: recipient, subject: 'Payment Confirmation!')
    end
end
