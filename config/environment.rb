# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TotDepot::Application.initialize!

TotDepot::Application.configure do 
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = { 
  	address: "smtp.gmail.com", 
  	port: 587, 
  	domain: "touroftauranga@gmail.com", 
  	authentication: "plain", 
  	user_name: "touroftauranga@gmail.com", 
  	password: "msbikeride2014", 
  	enable_starttls_auto: true 
  } 
end
