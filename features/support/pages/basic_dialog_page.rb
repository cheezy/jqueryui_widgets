class BasicDialogPage
  include PageObject

  page_url 'http://jqueryui.com/dialog'

  in_frame(:class => 'demo-frame') do |frame|
    jqueryui_basic_dialog(:basic_dialog, :class => 'ui-dialog', :frame => frame)
  end

  def basic_dialog
    basic_dialog_element
  end
end

