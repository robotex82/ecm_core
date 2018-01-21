module Ecm
  module Core
    module Backend
      module ActiveStorage
        class BlobsController < Itsf::Backend::Resource::BaseController
          def self.resource_class
            ::ActiveStorage::Blob
          end

          private

          def permitted_params
            params.require(:blob).permit()
          end
        end
      end
    end
  end
end