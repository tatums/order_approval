module ShipToMultiple
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do |app|
      app.config.tkml_features << "order_approval"
      app.config.autoload_paths += [
        File.expand_path(
          "#{Rails.root}/features/order_approval/lib/order_approval.rb"
        )
      ]
    end
  end
end
