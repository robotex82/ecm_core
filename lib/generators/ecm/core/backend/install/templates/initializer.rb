Ecm::Core::Backend.configure do |config|
  # Set the resources, that will be shown in the backend menu.
  # 
  # Default: config.registered_controllers = -> {[
  #            Ecm::Core::Backend::DelayedJobsController
  #          ]}
  # 
  config.registered_controllers = -> {[
    Ecm::Core::Backend::DelayedJobsController
  ]}

  # Set the services, that will be shown in the backend menu.
  # 
  # Default: config.registered_services = -> {[
  #          ]}
  # 
  config.registered_services = -> {[
  ]}
end