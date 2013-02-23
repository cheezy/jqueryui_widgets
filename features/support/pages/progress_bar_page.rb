class ProgressBarPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/progress_bar.html')}"

  jqueryui_progress_bar(:progress_bar, :id => 'progressbar')

  def progress_bar
    progress_bar_element
  end
end