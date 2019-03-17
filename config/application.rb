# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CustomStore
  class Application < Rails::Application
    config.load_defaults 5.2

    config.generators do |generator|
      generator.system_tests false
      generator.scaffold_stylesheet false
      generator.stylesheets false
      generator.view_specs false
      generator.helper_specs false
      generator.javascripts false
      generator.assets = false
      generator.helper = false
    end
  end
end
