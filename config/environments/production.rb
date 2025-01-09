require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot for better performance and memory savings (ignored by Rake tasks).
  config.eager_load = true

  # Full error reports are disabled.
  config.consider_all_requests_local = false

  # Assume all access to the app is happening through a SSL-terminating reverse proxy.
  config.assume_ssl = true

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true

  # Log to STDOUT with structured logging.
  config.logger = ActiveSupport::Logger.new(STDOUT)
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")
  config.log_tags = [:request_id]

  # Cache store is disabled for simplicity.
  config.cache_store = :null_store

  # ActiveJob uses inline adapter for simplicity.
  config.active_job.queue_adapter = :inline

  # Active Storage is disabled.
  config.active_storage.service = :null

  # Silence deprecations.
  config.active_support.report_deprecations = false

  # I18n fallbacks.
  config.i18n.fallbacks = true

  # DNS rebinding protection.
  # Uncomment and configure if needed.
  # config.hosts = [
  #   "example.com",
  #   /.*\.example\.com/
  # ]
end
