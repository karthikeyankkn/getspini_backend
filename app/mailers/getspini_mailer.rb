class GetspiniMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.getspini_mailer.sendemail.subject
  #
  
    def sendemail(lead)
	    @lead = lead
	    mail to: @lead.email, subject: "Local lead test"
	  end
end
