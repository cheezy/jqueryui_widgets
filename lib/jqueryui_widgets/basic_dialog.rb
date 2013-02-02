class JQueryUIWidgets::BasicDialog < PageObject::Elements::Div

  def title
    div_element(:class => 'ui-dialog-titlebar').span_element.text
  end

  def content
    div_element(:class => 'ui-dialog-content').text
  end

  def close
    button_element(:class => 'ui-dialog-titlebar-close').click
  end

end