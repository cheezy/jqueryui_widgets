
#
# Basic Dialog allows JQuery UI Widgets to interact
# with the basic dialogs that JQueryUI pops up.
#
# NOTE: JQueryUI Widgets are very customizable,
# so we've kept the functionality for the dialogs
# class as rudimentary as possible, to allow the
# end user to build up any functionality they
# require, and customize the class to suit their
# particular needs.
#
class JQueryUIWidgets::BasicDialog < PageObject::Elements::Div

  #
  # Generates three methods
  #
  # The {NAME}title method grabs the span element of the title
  # bar in the UI dialog and returns the text.
  #
  # {NAME}_content method will return the entire text of
  # the JQuery UI dialog box.
  #
  # close_{NAME} method will, of course, click the button
  # labeled close.
  #

  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}_title" do
      dialog = self.send "#{name}_element"
      dialog.div_element(:class => 'ui-dialog-titlebar').span_element.text
    end

    accessor.send :define_method, "#{name}_content" do
      dialog = self.send "#{name}_element"
      dialog.div_element(:class => 'ui-dialog-content').text
    end

    accessor.send :define_method, "close_#{name}" do
      dialog = self.send "#{name}_element"
      dialog.button_element(:class => 'ui-dialog-titlebar-close').click
    end
  end

end