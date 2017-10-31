Ecm::Core::Backend::Engine.routes.draw do
  resources :delayed_jobs

  root to: 'home#index'
end
