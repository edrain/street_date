# Load the rails application
require File.expand_path('../application', __FILE__)

if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  ENV['GEM_PATH'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
end

# Initialize the rails application
StreetDate::Application.initialize!

