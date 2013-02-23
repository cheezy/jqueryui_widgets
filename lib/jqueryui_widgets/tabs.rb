class JQueryUIWidgets::Tabs < PageObject::Elements::UnorderedList

  def select(label)
    link_element(:text => label).click
  end

  def selected
    list_item_element(:class => 'ui-tabs-active').link_element.text
  end  
end
