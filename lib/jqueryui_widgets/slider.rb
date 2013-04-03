
class JQueryUIWidgets::Slider < PageObject::Elements::Div

  def current
    link(:class => 'ui-slider-handle').style.delete('left: ').gsub(';','')
  end
end