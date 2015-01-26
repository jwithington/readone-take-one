# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# set up mailing
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:tls => true,
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "gmail.com",
	:authentication => :login,
	user_name: ENV["GMAIL_USERNAME"],
	password: ENV["GMAIL_PASSWORD"]
}

# alternately
# config.action_mailer.smtp_settings = {
#   address: "smtp.gmail.com",
#   port: 587,
#   domain: "example.com",
#   authentication: "plain",
#   enable_starttls_auto: true,
#   user_name: ENV["GMAIL_USERNAME"],
#   password: ENV["GMAIL_PASSWORD"]
# }