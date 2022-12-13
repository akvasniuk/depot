require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond
    assert_equal "Respond", mail.subject
    assert_equal ["yorkgood5r@gmail.com@example.org"], mail.to
    assert_equal ["yorkgood4@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
