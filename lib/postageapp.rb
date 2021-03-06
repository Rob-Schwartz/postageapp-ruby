require 'net/http'
require 'net/https'
require 'digest'
require 'logger'

require 'json'
require 'base64'

require 'postageapp/utils'
require 'postageapp/version'
require 'postageapp/configuration'
require 'postageapp/logger'
require 'postageapp/request'
require 'postageapp/failed_request'
require 'postageapp/response'
require 'postageapp/mail'
require 'postageapp/mail/delivery_method'

require 'postageapp/rails/railtie' if (defined?(Rails::Railtie))

module PostageApp
  class Error < StandardError ; end
  
  # Call this method to modify your configuration
  # Example:
  #   PostageApp.configure do |config|
  #     config.api_key             = '1234567890abcdef'
  #     config.recipient_override  = 'test@test.test' if Rails.env.staging?
  #   end
  # 
  # If you do not want/need to initialize the gem in this way, you can use the environment
  # variable POSTAGEAPP_API_KEY to set up your key.
  
  def self.configure
    yield(configuration)
  end
  
  # Accessor for the PostageApp::Configuration object
  # Example use:
  #   PostageApp.configuration.api_key = '1234567890abcdef'
  def self.configuration
    @configuration ||= Configuration.new
  end

  class << self
    alias :config :configuration
  end
  
  # Logger for the plugin
  def self.logger
    @logger ||= begin
      configuration.logger || PostageApp::Logger.new(
        if (configuration.project_root)
          FileUtils.mkdir_p(File.join(File.expand_path(configuration.project_root), 'log'))
          File.join(configuration.project_root, "log/postageapp_#{configuration.environment}.log")
        else
          STDOUT
        end
      )
    end
  end
end

require 'postageapp/mail/extensions'

if (defined?(::Mail))
  PostageApp::Mail::Extensions.install!
end
