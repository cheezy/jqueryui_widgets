class JQueryUIWidgets::Slider < PageObject::Elements::Div

  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}" do
      slider = self.send "#{name}_element"
      the_slider = slider.link_element(:class => 'ui-slider-handle ui-state-default ui-corner-all')
      the_slider.html[/\d+%/]
    end

    accessor.send :define_method, "#{name}=" do |value|
      browser.execute_script("document.getElementsByClassName('ui-slider-handle')[0].style.left=\"#{value}\";")
    end
  end
end