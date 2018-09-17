class GetspiniMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.getspini_mailer.sendemail.subject
  #
  
    def send_email(lead)
	    @lead = lead
	    mail to: "<karthikeyan@spinircle.com>" , subject: @lead.category
	    # mail to: "<karthikeyan@spinircle.com>,<joshua.simon@spinircle.com>,<contact@getspini.com>,<sprasad@hrealty.com>,<pvijay@hrealty.com>" , subject: "Site vist response"
	  end
end
