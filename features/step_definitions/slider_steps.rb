Given /^I am on the slider page$/ do
  visit SliderPage
end

Then /^the current value of the slider should be "([^"]*)"$/ do |percent|
  on(SliderPage).slider.current.should == percent
end