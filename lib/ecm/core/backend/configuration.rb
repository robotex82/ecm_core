require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Core
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor :registered_controllers do
          lambda do
            [
              # Ecm::Contact::Backend::FoosController
            ]
          end
        end

        mattr_accessor :registered_services do
          lambda do
            []
          end
        end

        mattr_accessor(:enable_active_storage_backend) { false }

        def self.registered_controllers
          if enable_active_storage_backend
            @@registered_controllers
          else
            -> { @@registered_controllers.call.reject { |c| c.name =~ /.*ActiveStorage.*/ } }
          end
        end
      end
    end
  end
end
