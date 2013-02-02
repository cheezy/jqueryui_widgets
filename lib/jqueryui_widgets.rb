require 'page-object'
require "jqueryui_widgets/version"
require 'jqueryui_widgets/basic_dialog'

module JQueryUIWidgets

  PageObject.register_widget(:jqueryui_basic_dialog, JQueryUIWidgets::BasicDialog, 'div')


end
