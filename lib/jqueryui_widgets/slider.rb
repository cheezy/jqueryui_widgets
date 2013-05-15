
#
# Slider Class will serve as a wrapper for the JQuery UI Slider widget,
# allowing the user to interact with the slider, setting it to a specific
# position within the length of the slider, between 0% and 100%.
#
# The user will pass in the variable they wish to set with the addition
# of the % symbol.
#
# NOTE: The code for the Slider widget will be kept as basic as
# possible in order to allow the user to tailor the class to suit
# their own needs in case customization of the slider has been
# exercised.
#

class JQueryUIWidgets::Slider < PageObject::Elements::Div

  #
  #  Generates two methods.
  #
  # The {NAME} method picks up the current position of the
  # slider, grabbing the % and returning it.
  #
  # The {NAME}= method will allow the user to set the
  # position of the slider by passing in a percentage.
  #
  #   @example
  #     the_slider=('15%')
  #     Will set the slider to 15%.
  #
  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}" do
      slider = self.send "#{name}_element"
      the_slider = slider.link_element(:class => 'ui-slider-handle ui-state-default ui-corner-all')
      the_slider.html[/\d+%/]
    end

    accessor.send :define_method, "#{name}=" do |value|
      browser.execute_script("document.getElementsByClassName('ui-slider-handle')[0].style.left=\"#{value}\";")
    end
  end
end