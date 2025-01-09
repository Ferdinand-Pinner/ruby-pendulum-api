require_relative "boot"

require "rails"

# Include only necessary frameworks for API applications.
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"

Bundler.require(*Rails.groups)

module RubyPendulumApi
  class Application < Rails::Application
    config.load_defaults 8.0

    # API-only configuration
    config.api_only = true

    # Disable autoloading for assets and tasks
    config.autoload_lib(ignore: %w[assets tasks])

    config.assets.enabled = false
    config.assets.initialize_on_precompile = false
  end
end
