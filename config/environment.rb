# Load the rails application
require File.expand_path('../application', __FILE__)

#if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  #ENV['GEM_PATH'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
  #ENV['GEM_ENV'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
#end

#require File.join(File.dirname(__FILE__), 'boot')

# configure action_mailer

  # configure action_mailer
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address => 'mail.streetdate.info',
  :port => 587,
  :domain => 'streetdate.info',
  :authentication => :login,
  :user_name => 'edrain@streetdate.info',
  :password => '007Spies'
}
config.action_mailer.raise_delivery_errors = true
config.action_mailer.perform_deliveries = true
#config.action_mailer.default_charset = 'utf-8'


# Initialize the rails application
StreetDate::Application.initialize!

