ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.credentials.sendgrid_user_name,
  :password => Rails.application.credentials.sendgrid_password,
  :domain => Rails.application.credentials.sendgrid_domain_name,
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}