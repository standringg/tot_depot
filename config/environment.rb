# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TotDepot::Application.initialize!

#config for using sendgrid

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => "app29208050@heroku.com",
  :password => "6xici22o",
  :domain => "touroftauranga@gmail.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

 #TotDepot::Application.configure do
  #config.action_mailer.delivery_method = :smtp

  #config.action_mailer.smtp_settings = { 
  	#address: "smtp.sendgrid.net", 
  	#port: 587, 
  	#domain: "touroftauranga@gmail.com", 
  	#authentication: "plain", 
  	#user_name: "app29208050@heroku.com", 
  	#password: "6xici22o", 
  	#enable_starttls_auto: true 
 # } 
#end
