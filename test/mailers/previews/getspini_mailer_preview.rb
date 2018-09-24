# Preview all emails at http://localhost:3000/rails/mailers/getspini_mailer
class GetspiniMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/getspini_mailer/sendemail
  def sendemail
    GetspiniMailer.sendemail
  end

end
