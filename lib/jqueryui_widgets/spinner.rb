#
# The Spinner Class will serve as a wrapper for the JQuery UI Spinner
# widget, allowing the user to interact with the spinner, setting
# the value either through manual entry, or the up or down arrows attached
# to the widget.
#
# NOTE: The code for the Spinner widget will be kept as basic as possible
# in order to allow the user to tailor the class to suit their own
# needs in case customization of the spinner has been exercised.
#
class JQueryUIWidgets::Spinner < PageObject::Elements::Span

  #
  # Generates four methods.
  #
  # The increment_{NAME} method allows the user to click the
  # up arrow and increment the value of the widget by 1.
  #
  # The decrement_{NAME} method allows the user to click the
  # down arrow and decrement the value of the widget by 1.
  #
  # The {NAME} method allows the user to return the current
  # value of the widget.
  #
  # The {NAME}_set method allows the user to set the value
  # of the widget.
  #
  # @example
  #   the_spinner = 15
  #
  #   Will set the spinner to 15.
  #
  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "increment_#{name}" do
      spinner = self.send "#{name}_element"
      spinner.link_element(:class => 'ui-spinner-up').click
    end

    accessor.send :define_method, "decrement_#{name}" do
      spinner = self.send "#{name}_element"
      spinner.link_element(:class => 'ui-spinner-down').click
    end

    accessor.send :define_method, "#{name}" do
      spinner = self.send "#{name}_element"
      spinner.text_field_element(:id => 'spinner').value
    end

    accessor.send :define_method, "#{name}=" do |value|
      spinner = self.send "#{name}_element"
      spinner.text_field_element(:id => 'spinner').value = value
    end
  end
end