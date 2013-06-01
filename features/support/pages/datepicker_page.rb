class DatepickerPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/datepicker.html')}"

  jqueryui_datepicker(:datepicker_one, :id => 'datepicker1')
  jqueryui_datepicker(:datepicker_two, :id => 'datepicker2')

end