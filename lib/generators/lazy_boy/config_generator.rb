module LazyBoy
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc <<DESC
        Description:
          Copies a standard lazy template file to your application.
      DESC

      def copy_config_file
        generate "kaminari:config", ""
        generate "simple_form:install", ""
        generate "simple_form:install", "--foundation"
        generate "foundation:install", '--haml'
        append_to_file "app/assets/javascripts/application#{detect_js_format[0]}", "\nrequire jquery-ui\n"
        insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "\n#{detect_css_format[1]}  require font-awesome\n", :after => "require_self"

        directory 'layouts', 'app/views/layouts'
        directory 'application', 'app/views/application'
        directory 'kaminary', 'app/views/kaminary'
        copy_file "common.css.sass", "app/assets/stylesheets/common.css.sass"

      end
    end
  end
end
