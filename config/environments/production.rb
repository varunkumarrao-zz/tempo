# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host                  = "http://assets.example.com"

ExceptionNotifier.exception_recipients = %w(bryan.ray@datacert.com scott.stevenson@datacert.com)

# Disable delivery errors, bad email addresses will be ignored
config.action_mailer.raise_delivery_errors = true
ActionMailer::Base.default_charset    = 'utf-8'
ActionMailer::Base.delivery_method    = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings    = {
  :address => 'DCMX01.DC.COM'
}