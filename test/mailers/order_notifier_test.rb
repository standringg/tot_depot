require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "recieved" do
    mail = OrderNotifier.recieved(orders(:one))
    assert_equal "Tour of Tauranga Entry", mail.subject
    assert_equal ["standringg@gmail.com"], mail.to
    assert_equal ["standringg@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "record" do
    mail = OrderNotifier.record
    assert_equal "New Tour of Tauranga Entry", mail.subject
    assert_equal ["standringg@gmail.com"], mail.to
    assert_equal ["standringg@gmail.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded 
  end

end
