class MenuPage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/menus.html')}"

  jqueryui_menus(:menus, :class => 'ui-menu')

  def menus
    menus_element
  end
end