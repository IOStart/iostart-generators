module Iostart
  module Generators
    class EnvYamlGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_lib_file
        copy_file "env_yaml.rb", "lib/env_yaml.rb"
      end

      def copy_yml_file
        copy_file "env.yml", "config/env.yml"
      end

      def append_to_application
        append_file "config/application.rb", <<-RUBY

require 'env_yaml'
RUBY
      end
    end
  end
end