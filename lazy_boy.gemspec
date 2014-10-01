$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lazy_boy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lazy_boy"
  s.version     = LazyBoy::VERSION
  s.authors     = ["Andrea Ranaldi", "Francesco Loreti"]
  s.email       = ["andrea.ranaldi@gmail.com","francesco.loreti@outlook.com"]
  s.homepage    = "https://github.com/MdreW/LazyBoy/tree/master/lib/generators/lazy_boy"
  s.summary     = "Gem with layout and configs for lazy programmer."
  s.description = "Gem with layout and configs for lazy programmer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency 'haml'
  s.add_dependency 'simple_form'
  s.add_dependency 'foundation-rails'
  s.add_dependency "font-awesome-rails"
  s.add_dependency 'kaminari'
  s.add_dependency 'modernizr-rails'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'rspec-rails' #, group: [:development, :test]
  s.add_dependency 'factory_girl_rails' #, group: [:development, :test]
  s.add_dependency 'database_cleaner' #, group: [:test]
end
