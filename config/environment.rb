# Load the rails application
require File.expand_path('../application', __FILE__)

#if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  #ENV['GEM_PATH'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
  #ENV['GEM_ENV'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
#end

#require File.join(File.dirname(__FILE__), 'boot')

# configure action_mailer
ActionMailer::Base.smtp_settings = {
  :address              => 'mail.streetdate.info',
  :port                 => 587,
  :domain               => 'streetdate.info',
  :authentication       => :login,
  :user_name            => 'eli@streetdate.info',
  :password             => '007Spies'
}


# Initialize the rails application
StreetDate::Application.initialize!

