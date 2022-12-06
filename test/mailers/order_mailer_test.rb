require "test_helper"

class OrderMailerTest < ActionMailer::TestCase

  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Vegetables Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Cucumber/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Vegetables Store Order shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>Cucumber<\/td>/, mail.body.encoded
  end

end
