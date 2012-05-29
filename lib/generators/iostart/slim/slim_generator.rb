module Iostart
  module Generators
    class SlimGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def add_gem
        gem 'slim-rails'
      end

      def add_application_template
        template "application.html.slim", "app/views/layouts/application.html.slim"
      end
    end
  end
end