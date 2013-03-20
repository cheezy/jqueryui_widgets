
#
# Basic Dialog allows JQuery UI Widgets to interact
# with the basic dialogs that JQueryUI pops up.
#
class JQueryUIWidgets::BasicDialog < PageObject::Elements::Div

  #
  # The title function grabs the span element of the title
  # bar in the UI dialog and returns the text.
  #
  def title
    div_element(:class => 'ui-dialog-titlebar').span_element.text
  end

  #
  # Content function will return the entire text of
  # the JQuery UI dialog box.
  #
  def content
    div_element(:class => 'ui-dialog-content').text
  end

  #
  # Close function will, of course, click the button
  # labeled close.
  #
  def close
    button_element(:class => 'ui-dialog-titlebar-close').click
  end

end