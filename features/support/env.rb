$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))

require 'rspec/expectations'
require 'jqueryui_widgets'
require 'page-object'

World(PageObject::PageFactory)
