Given /^I am on the slider page$/ do
  visit SliderPage
end

Then /^the current value of the slider should be "([^"]*)"$/ do |percent|
  expect(on(SliderPage).the_slider).to eql percent
end

When(/^I move the slider to "([^"]*)"$/) do |value|
  on(SliderPage).the_slider = value
end