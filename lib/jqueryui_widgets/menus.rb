class JQueryUIWidgets::Menus < PageObject::Elements::UnorderedList

  def select_base_menu(item)
    link_element(:text => item, :class => 'ui-corner-all').click
  end

  def select_sub_menu(item)
    list_item_element(:text => item, :attrbute => 'aria-haspopup').click
  end

  def menu_items
    link_elements(:class => 'ui-corner-all').map(&:text)
  end

  def inactive_menu_items
    list_item_elements(:class => 'ui-state-disabled').map(&:text)
  end
end