Given /^I am on the accordion page$/ do
  visit AccordionPage
end

When /^I select the "([^"]*)" accordion element$/ do |label|
  on(AccordionPage).accordion.select label
end

Then /^the current accordion element should be "([^"]*)"$/ do |label|
  expect(on(AccordionPage).accordion.selected).to eql label
end

Then /^the accordion labels should include "([^"]*)"$/ do |label|
  expect(on(AccordionPage).accordion.labels).to include label
end

Then /^the "([^"]*)" element should be selected$/ do |label|
  expect(on(AccordionPage).accordion.selected?(label)).to be_true
end

When /^the "([^"]*)" element should not be selected$/ do |label|
  expect(on(AccordionPage).accordion.selected?(label)).to be_false
end