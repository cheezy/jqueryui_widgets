
#
# Accordion class to make use of the Accordion widget.
#
class JQueryUIWidgets::Accordion < PageObject::Elements::Div

  #
  # Select method will take a single parameter
  # and click on the h3 element to select it.
  #
  # @params [string] of the header you want to find
  #
  # @example
  #   select('Section 2') will click on the
  #   Section 2 header element and open it.
  #
  def select(item)
    h3(:text => item).click
    sleep 1
  end

  #
  # Selected method will check the currently selected
  # accordion element by checking if the class
  # 'ui-accordin-header-active' is present within
  # the accordion element.
  #
  def selected
    h3(:class => 'ui-accordion-header-active').text
  end

end