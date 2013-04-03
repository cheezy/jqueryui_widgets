class SliderPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/slider.html')}"

  jqueryui_slider(:slider, :id => 'slider')

  def slider
    slider_element
  end
end