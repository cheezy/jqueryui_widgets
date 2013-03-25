
#
# Class that wraps the JQueryUI Tabs
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
