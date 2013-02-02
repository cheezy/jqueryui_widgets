# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jqueryui_widgets/version'

Gem::Specification.new do |gem|
  gem.name          = "jqueryui_widgets"
  gem.version       = JQueryUIWidgets::VERSION
  gem.authors       = ["Jeffrey S. Morgan"]
  gem.email         = ["jeff.morgan@leandog.com"]
  gem.description   = %q{Wrapper around jQueryUI controls for use with page-object gem}
  gem.summary       = %q{Wrapper around jQueryUI controls for use with page-object gem}
  gem.homepage      = "http://github.com/cheezy/jqueryui_widgets"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'page-object', '>= 0.8.0'

  gem.add_development_dependency 'cucumber', '>= 1.2.0'
  gem.add_development_dependency 'rspec', '>= 2.12'
end
