class JQueryUIWidgets::Accordion < PageObject::Elements::Div

  def select(item)
    h3(:text => item).click
    sleep 1
  end

  def selected
    h3(:class => 'ui-accordion-header-active').text
  end

end