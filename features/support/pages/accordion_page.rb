class AccordionPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/accordion.html')}"

  jqueryui_accordion(:accordion, :id => 'accordion')

  def accordion
    accordion_element
  end
end