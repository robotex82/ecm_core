Ecm::Core::Backend::Engine.routes.draw do
  resources :delayed_jobs
  namespace :active_storage do
    resources :blobs
    resources :attachments
  end if Ecm::Core::Backend::Configuration.enable_active_storage_backend

  root to: 'home#index'
end
