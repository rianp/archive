class AdminMailer < ActionMailer::Base
    default from: "new contact"

    def new_contact(contact)
        @contact = contact
        mail(to: 'admin', subject: 'new contact')
    end
end
