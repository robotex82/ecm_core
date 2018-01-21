module Ecm
  module Core
    module Backend
      module ActiveStorage
        class AttachmentsController < Itsf::Backend::Resource::BaseController
          def self.resource_class
            ::ActiveStorage::Attachment
          end

          private

          def permitted_params
            params.require(:attachment).permit()
          end
        end
      end
    end
  end
end