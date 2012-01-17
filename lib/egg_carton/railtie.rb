require "rails"

module EggCarton
  class Railtie < Rails::Railtie
    initializer "egg_carton.helper" do
      ActionView::Base.send :include, Helper
    end
  end
end