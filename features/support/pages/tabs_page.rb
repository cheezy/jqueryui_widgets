class TabsPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/tabs.html')}"
  
  jqueryui_tabs(:tabs, :class => 'ui-tabs-nav')

  def tabs
    tabs_element
  end
end
