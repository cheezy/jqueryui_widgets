class BasicDialogPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/basic_dialog.html')}"
  
  jqueryui_basic_dialog(:basic_dialog, :class => 'ui-dialog')

  def basic_dialog
    basic_dialog_element
  end
end

