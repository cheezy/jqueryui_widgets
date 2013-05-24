Given /^I am on the spinner page$/ do
  visit SpinnerPage
end

When(/^I click the increment button$/) do
  on(SpinnerPage).increment_the_spinner
end

Then(/^the Spinner Widget should read "([^"]*)"$/) do |value|
  on(SpinnerPage).the_spinner.should == value
end

When(/^I click the decrement button$/) do
  on(SpinnerPage).decrement_the_spinner
end

When(/^I set the spinner value to "([^"]*)"$/) do |value|
  on(SpinnerPage).the_spinner = value
end