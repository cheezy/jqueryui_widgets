class SpinnerPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/spinner.html')}"
end