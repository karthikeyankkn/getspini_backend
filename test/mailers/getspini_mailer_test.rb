require 'test_helper'

class GetspiniMailerTest < ActionMailer::TestCase
  test "sendemail" do
    mail = GetspiniMailer.sendemail
    assert_equal "Sendemail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
