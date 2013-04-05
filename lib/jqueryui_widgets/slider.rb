
class JQueryUIWidgets::Slider < PageObject::Elements::Div

  def current
    value = link_element(:class => 'ui-slider-handle').style('left')
    puts value
    value.chomp("px")
  end
end