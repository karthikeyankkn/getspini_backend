class GetspiniMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.getspini_mailer.sendemail.subject
  #
  
    def send_email(lead)
	    @lead = lead
	    # mail to: "<karthikeyan@spinircle.com>" , subject: "GETSPINI-WEBSITE-LEAD"
	    mail to: "<karthikeyan@spinircle.com>, <joshua.simon@spinircle.com>, <contact@getspini.com>, <anand.kumar@spinircle.com>, <anuradha.v@spinircle.com>, <shabuddeen@spinircle.com>, <catherine.cynthia@spinircle.com>" , subject: "GETSPINI-WEBSITE-LEAD"
	  end
end
