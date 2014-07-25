require 'page-object'
require 'jqueryui_widgets/version'
require 'jqueryui_widgets/basic_dialog'
require 'jqueryui_widgets/tabs'
require 'jqueryui_widgets/progress_bar'
require 'jqueryui_widgets/menus'
require 'jqueryui_widgets/accordion'
require 'jqueryui_widgets/slider'
require 'jqueryui_widgets/spinner'
require 'jqueryui_widgets/datepicker'
require 'jqueryui_widgets/autocomplete'

module JQueryUIWidgets

  PageObject.register_widget(:jqueryui_basic_dialog, JQueryUIWidgets::BasicDialog, 'div')
  PageObject.register_widget(:jqueryui_tabs, JQueryUIWidgets::Tabs, 'ul')
  PageObject.register_widget(:jqueryui_progress_bar, JQueryUIWidgets::ProgressBar, 'div')
  PageObject.register_widget(:jqueryui_menus, JQueryUIWidgets::Menus, 'ul')
  PageObject.register_widget(:jqueryui_accordion, JQueryUIWidgets::Accordion, 'div')
  PageObject.register_widget(:jqueryui_slider, JQueryUIWidgets::Slider, 'div')
  PageObject.register_widget(:jqueryui_spinner, JQueryUIWidgets::Spinner, 'span')
  PageObject.register_widget(:jqueryui_datepicker, JQueryUIWidgets::Datepicker, 'text_field')
  PageObject.register_widget(:jqueryui_autocomplete, JQueryUIWidgets::Autocomplete, 'text_field')

end
