
#
# Accordion class to make use of the Accordion widget.
#
# NOTE: Since JQueryUI Widgets are completely customizable,
# we've kept the Accordion class limited to basic functionality
# so that end users can pick up the gem and customize it to
# suit their own needs.
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
    the_accordions = headers
    index = the_accordions.find_index do |accordion|
      accordion.text == item
    end
    the_accordions[index].click
    wait_for_content(index)
  end

  #
  # Selected method will check the currently selected
  # accordion element by checking if the class
  # 'ui-accordin-header-active' is present within
  # the accordion element.
  #
  def selected
    h3_element(:class => 'ui-accordion-header-active').text
  end

  #
  # Selected? compares the passed in label
  # with the current h3_element text and returns
  # a boolean result.
  #
  # @params
  #  selected?[label] of the item you want to compare
  #
  # @example
  #  selected?('Section 3') will compare the
  #  currently selected header with the 'Section 3'
  #  variable, and return true or false.

  def selected?(label)
    selected == label
  end

  #
  # labels method will map all of the
  # headers in the accordion to an array
  # to allow for comparison.
  #
  def labels
    headers.map(&:text)
  end

  private

  def wait_for_content(index)
    the_content = div_elements(:class => 'ui-accordion-content')[index]
    wait_until(1, "Content not visible within one second") do
      the_content.style("display") == "block"
    end
  end

  def headers
    h3_elements(:class => 'ui-accordion-header')
  end

end