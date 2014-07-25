class AutocompletePage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/autocomplete.html')}"

  jqueryui_autocomplete(:autocomplete, :id => 'tags')
  unordered_list(:autocomplete_unordered_list, :class => 'ui-autocomplete')

end