require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Star
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.autoload_paths += %W(#{config.root}/lib)

    config.active_record.store_full_sti_class = true
    config.active_record.default_timezone = :local

    config.time_zone = 'Beijing'

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
