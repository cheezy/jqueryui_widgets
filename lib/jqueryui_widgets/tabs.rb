class JQueryUIWidgets::Tabs < PageObject::Elements::UnorderedList

  def select(label)
    link_element(:text => label).click
  end

end
