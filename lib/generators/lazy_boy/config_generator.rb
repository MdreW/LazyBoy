module LazyBoy
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc <<DESC
        Description:
          Copies a standard lazy template file to your application.
      DESC

      def copy_config_file
        directory 'layouts', 'app/views/layouts'
        directory 'application', 'app/views/application'
        directory 'kaminary', 'app/views/kaminary'
      end
    end
  end
end
