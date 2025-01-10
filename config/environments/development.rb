require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Reload application code on every request for development convenience.
  config.enable_reloading = true

  # Eager loading is disabled in development to speed up boot time.
  config.eager_load = false

  # Show full error reports for easier debugging.
  config.consider_all_requests_local = true

  # Store uploaded files on the local file system.
  # config.active_storage.service = :local

  # Use an inline queue adapter for ActiveJob in development.
  config.active_job.queue_adapter = :inline

  # Use the default Rails cache store (in-memory).
  config.cache_store = :memory_store

  # Raise exceptions on disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed database queries.
  config.active_record.migration_error = :page_load if defined?(ActiveRecord)

  # Annotate rendered views with file names (not relevant for API-only apps).
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Set a logging level (debug for more detailed logs).
  config.log_level = :debug

  # Use standard logger formatting in development.
  config.logger = ActiveSupport::Logger.new(STDOUT)
  config.log_formatter = ::Logger::Formatter.new

  # Disable force SSL in development for easier testing.
  config.force_ssl = false

  # Allow requests from all hosts in development.
  config.hosts.clear

  # Enable locale fallbacks for I18n (useful for missing translations).
  config.i18n.fallbacks = true
end
