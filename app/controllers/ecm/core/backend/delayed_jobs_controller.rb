module Ecm
  module Core
    module Backend
      class DelayedJobsController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Delayed::Job
        end
      end
    end
  end
end
