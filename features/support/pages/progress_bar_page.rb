class ProgressBarPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/progress_bar.html')}"

  jqueryui_progress_bar(:the_progress, :id => 'progressbar')

end