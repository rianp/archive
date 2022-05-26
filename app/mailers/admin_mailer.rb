class AdminMailer < ActionMailer::Base
    default from: "new contact"

    def new_contact(contact)
        @contact = contact
        mail(to: 'crippingcg@gmail.com', subject: 'new contact')
    end
end
