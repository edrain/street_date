# Load the rails application
require File.expand_path('../application', __FILE__)

#if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  #ENV['GEM_PATH'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
  #ENV['GEM_ENV'] = '/home/edrain/.gems' + ':/usr/lib/ruby/gems/1.8'
#end

#require File.join(File.dirname(__FILE__), 'boot')

Base_iTunes_URL = "http://click.linksynergy.com/fs-bin/stat?id=UXyDgEy7SJ8&offerid=146261&type=3&subid=0&tmpid=1826&RD_PARM1="
  
# Initialize the rails application
StreetDate::Application.initialize!

