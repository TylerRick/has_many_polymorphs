# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require 'action_controller'

Rails::Initializer.run do |config|
  
  if ActionController::Base.respond_to? 'session='
    config.action_controller.session = {:session_key => '_app_session', :secret => '22cde4d5c1a61ba69a81795322cde4d5c1a61ba69a817953'}
  end
  
  config.load_paths << "#{RAILS_ROOT}/app/models/person" # moduleless model path
  
  config.after_initialize do
    config.has_many_polymorphs_options['requirements'] << "#{RAILS_ROOT}/lib/library_model"
  end      
end

# Dependencies.log_activity = true

ENV['RAILS_ASSET_ID'] = Time.now.to_i.to_s
