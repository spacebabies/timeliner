require 'rails'

module Timeliner
  class Engine < ::Rails::Engine
    isolate_namespace Timeliner

    config.autoload_paths << config.root.join('lib')

    config.generators do |g|
      g.test_framework :rspec, fixture: false
    end

    initializer 'timeliner.action_controller.tracking_concern' do
      ActiveSupport.on_load(:action_controller_base) {
        include TrackingConcern
      }
    end
  end
end
