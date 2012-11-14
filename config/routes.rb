Spree::Core::Engine.routes.draw do
  namespace :spree do
    namespace :api do
      namespace :v1 do
        resources :activators
      end
    end
  end

  resources :activators, :only => [:index, :show]
  # Add your extension routes here
end
