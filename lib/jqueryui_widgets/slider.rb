
class JQueryUIWidgets::Slider < PageObject::Elements::Div

  def value
    value = link_element(:class => 'ui-slider-handle').style('left')
    value.chomp("px")
  end
end