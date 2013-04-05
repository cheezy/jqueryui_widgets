Given /^I am on the slider page$/ do
  @page = SliderPage.new(@browser)
  @page.navigate_to "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/slider.html')}"
end

Then /^the current value of the slider should be "([^"]*)"$/ do |percent|
  sleep 10
  on(SliderPage).slider.current.should == percent
end