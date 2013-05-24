class SpinnerPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/spinner.html')}"

  jqueryui_spinner(:the_spinner, :class => 'ui-spinner')


  def spinner
    the_spinner_element
  end
end