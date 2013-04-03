
#
# Class that wraps the JQueryUI Tabs, allowing
# the user to interact with tabbed items.
#
# NOTE: The Tabs Widget code will be kept as
# basic as possible for the time being, since
# the Widget itself is fully customizable, we
# cannot allow for all of the possible
# functionality. This will allow for users
# to customize the gem to suit their own
# needs for the widget.
#

class JQueryUIWidgets::Tabs < PageObject::Elements::UnorderedList

  #
  # Select method allows you to find the link element of
  # the tab you want to use, then clicks it.
  #
  # @param [Label] of the item you want to find.
  #
  # @example
  #   select('Nunc tincidunt')
  #   will click on the 'Nunc tincidunt'
  #   tab, selecting it.
  #
  def select(label)
    link_element(:text => label).click
  end

  #
  # Selected method will check the list item,
  # and the link_element of that list item,
  # take the text, and return it.
  #
  def selected
    list_item_element(:class => 'ui-tabs-active').link_element.text
  end

  #
  # Labels method will return all of the
  # link elements of the tabs, and return
  # them for use.
  #
  def labels
    link_elements(:class => 'ui-tabs-anchor').map(&:text)
  end
end
