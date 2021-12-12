require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test 'received' do
    mail = OrderMailer.received(orders(:one))
    assert_equal 'OleStore Order Confirmation', mail.subject
    assert_equal ['dave@example.org'], mail.to
    assert_equal ['thomasthankful@gmail.com'], mail.from
    assert_match /OleStore/, mail.body.encoded
  end
  test 'shipped' do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal 'OleStore Order Shipped', mail.subject
    assert_equal ['dave@example.org'], mail.to
    assert_equal ['thomasthankful@gmail.com'], mail.from
    assert_match /OleStore/, mail.body.encoded
  end
end
