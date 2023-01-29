# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# configuracion de mailer put your credentials for service smtp  mailing like sendgrid etc

ActionMailer::Base.smtp_settings = {
    :user_name => '',
    :password => '',
    :address => '',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }


ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
  end