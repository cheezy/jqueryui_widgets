class SliderPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/slider.html')}"

  jqueryui_slider(:the_slider, :id => 'slider')

  def slider
    the_slider_element
  end
end