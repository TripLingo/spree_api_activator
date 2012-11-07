Spree::Core::Engine.routes.prepend do
  # Add your extension routes here
  namespace :api do
    scope :module => :v1 do
      namespace :users do
        post   :coupon_add
        post   :coupon_remove
      end
    end
  end
end
