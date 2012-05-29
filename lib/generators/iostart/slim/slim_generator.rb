module Iostart
  module Generators
    class SlimGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def install_gem
        gem 'slim-rails'
      end

      def add_application_template
        template "application.html.slim", "app/views/layouts/application.html.slim"
      end

      def run_bundler
        run "bundle install"
      end
    end
  end
end