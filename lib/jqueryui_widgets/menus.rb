
#
# Class that wraps the jQueryUI menu.
#
class JQueryUIWidgets::Menus < PageObject::Elements::UnorderedList

  #
  # The select method allows you to pass in a theoretically
  # infinite number of variables from the base source through the
  # step definitions and into page to iterate through the top
  # menu and into any submenus you encounter.
  #
  # @params [Array] the menu items to find.  Items will be found
  # in the order in which they were provided.
  #
  # @example
  #   select('Salzburg', 'Delphi', 'Ada')
  #   will click through the menu 'Salzburg'
  #   the sub menu 'Delphi'
  #   and click on 'Ada' in the final submenu
  #
  def select(*items)
    menu_container = self
    items.each do |item|
      menu_container.each do |list_item|
        if list_item.text == item
          list_item.fire_event('onclick')
          menu_container = list_item.unordered_list_element
          break
        end
      end
    end
  end

  #
  # Search_for allows the user to supplement the select method
  # and search for a specific element within a menu or sub-menu.
  #
  # @params [Array] the menu items to search for. Items will
  # be found in the order they are given.
  #
  # @example
  #   search_for('Delphi', 'Ada')
  #   will find 'Ada' in the sub-menu.
  #
  def search_for(*labels)
    the_list_item = nil
    menu_container = self
    labels.each do |label|
      menu_container.each do |list_item|
        if list_item.text.slice!(label) == label
          the_list_item = list_item
          menu_container = list_item.unordered_list_element
          break
        end
      end
    end
    the_list_item
  end
end