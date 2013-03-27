# Load the rails application
require File.expand_path('../application', __FILE__)

#if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  #ENV['GEM_PATH'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
  #ENV['GEM_ENV'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
#end

#require File.join(File.dirname(__FILE__), 'boot')

# configure action_mailer
config.action_mailer.default_url_options = { :host => 'streetdate.info' }
  
# Initialize the rails application
StreetDate::Application.initialize!

