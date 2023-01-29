require "test_helper"

class StaffMailerTest < ActionMailer::TestCase
  test "schedule_update" do
    mail = StaffMailer.schedule_update
    assert_equal "Schedule update", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
