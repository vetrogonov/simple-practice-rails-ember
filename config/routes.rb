Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_ember_app :frontend, to: "/"
  namespace :api do
    namespace :v1 do
      resources :services, path: 'clinicians/:clinician_id/services', only: :index do
        resources :offices, only: :index
      end
    end
  end
end
