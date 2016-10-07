require 'test_helper'

class ContactsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = ContactsMailer.submitted
    assert_equal "Submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
